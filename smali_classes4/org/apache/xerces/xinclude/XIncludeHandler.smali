.class public Lorg/apache/xerces/xinclude/XIncludeHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLComponent;
.implements Lorg/apache/xerces/xni/parser/XMLDocumentFilter;
.implements Lorg/apache/xerces/xni/parser/XMLDTDFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;,
        Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;
    }
.end annotation


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final BUFFER_SIZE:Ljava/lang/String; = "http://apache.org/xml/properties/input-buffer-size"

.field public static final CURRENT_BASE_URI:Ljava/lang/String; = "currentBaseURI"

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field public static final HTTP_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HTTP_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final INITIAL_SIZE:I = 0x8

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field private static final NEW_NS_ATTR_QNAME:Lorg/apache/xerces/xni/QName;

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final STATE_EXPECT_FALLBACK:I = 0x3

.field private static final STATE_IGNORE:I = 0x2

.field private static final STATE_NORMAL_PROCESSING:I = 0x1

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final XINCLUDE_ATTR_ACCEPT:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_ACCEPT_LANGUAGE:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_ENCODING:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_HREF:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_PARSE:Ljava/lang/String;

.field private static final XINCLUDE_BASE:Ljava/lang/String;

.field public static final XINCLUDE_DEFAULT_CONFIGURATION:Ljava/lang/String; = "org.apache.xerces.parsers.XIncludeParserConfiguration"

.field public static final XINCLUDE_FALLBACK:Ljava/lang/String;

.field protected static final XINCLUDE_FIXUP_BASE_URIS:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-base-uris"

.field protected static final XINCLUDE_FIXUP_LANGUAGE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-language"

.field public static final XINCLUDE_INCLUDE:Ljava/lang/String;

.field public static final XINCLUDE_INCLUDED:Ljava/lang/String;

.field private static final XINCLUDE_LANG:Ljava/lang/String;

.field public static final XINCLUDE_NS_URI:Ljava/lang/String;

.field public static final XINCLUDE_PARSE_TEXT:Ljava/lang/String;

.field public static final XINCLUDE_PARSE_XML:Ljava/lang/String;

.field private static final XML_BASE_QNAME:Lorg/apache/xerces/xni/QName;

.field private static final XML_LANG_QNAME:Lorg/apache/xerces/xni/QName;

.field public static final XPOINTER:Ljava/lang/String; = "xpointer"

.field private static final gAfterEscaping1:[C

.field private static final gAfterEscaping2:[C

.field private static final gHexChs:[C

.field private static final gNeedEscaping:[Z


# instance fields
.field protected final fBaseURI:Ljava/util/Stack;

.field protected final fBaseURIScope:Lorg/apache/xerces/util/IntStack;

.field protected fBufferSize:I

.field protected fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

.field protected final fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

.field protected fCurrentLanguage:Ljava/lang/String;

.field protected fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

.field protected fDTDSource:Lorg/apache/xerces/xni/parser/XMLDTDSource;

.field private fDepth:I

.field protected fDocLocation:Lorg/apache/xerces/xni/XMLLocator;

.field protected fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

.field protected fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field protected final fExpandedSystemID:Ljava/util/Stack;

.field private fFixupBaseURIs:Z

.field private fFixupLanguage:Z

.field fHasIncludeReportedContent:Z

.field protected fHrefFromParent:Ljava/lang/String;

.field private fInDTD:Z

.field private fIsXML11:Z

.field protected final fLanguageScope:Lorg/apache/xerces/util/IntStack;

.field protected final fLanguageStack:Ljava/util/Stack;

.field protected final fLiteralSystemID:Ljava/util/Stack;

.field protected fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

.field private fNeedCopyFeatures:Z

.field private final fNotations:Ljava/util/ArrayList;

.field protected fParentRelativeURI:Ljava/lang/String;

.field protected fParentXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

.field private fResultDepth:I

.field private fSawFallback:[Z

.field private fSawInclude:[Z

.field protected fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

.field private fSeenRootElement:Z

.field private fSendUEAndNotationEvents:Z

.field protected fSettings:Lorg/apache/xerces/util/ParserConfigurationSettings;

.field private fState:[I

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field private final fUnparsedEntities:Ljava/util/ArrayList;

.field protected fXInclude10TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

.field protected fXInclude11TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

.field protected fXIncludeChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

.field protected fXIncludeLocator:Lorg/apache/xerces/util/XMLLocatorWrapper;

.field protected fXIncludeMessageFormatter:Lorg/apache/xerces/xinclude/XIncludeMessageFormatter;

.field protected fXPointerChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

.field protected fXPtrProcessor:Lorg/apache/xerces/xpointer/XPointerProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string/jumbo v4, "http://www.w3.org/2001/XInclude"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_NS_URI:Ljava/lang/String;

    const-string/jumbo v4, "include"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDE:Ljava/lang/String;

    const-string/jumbo v4, "fallback"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_FALLBACK:Ljava/lang/String;

    const-string/jumbo v4, "xml"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    const-string/jumbo v4, "text"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_TEXT:Ljava/lang/String;

    const-string/jumbo v4, "href"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_HREF:Ljava/lang/String;

    const-string/jumbo v4, "parse"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_PARSE:Ljava/lang/String;

    const-string/jumbo v4, "encoding"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ENCODING:Ljava/lang/String;

    const-string/jumbo v4, "accept"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT:Ljava/lang/String;

    const-string/jumbo v4, "accept-language"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT_LANGUAGE:Ljava/lang/String;

    const-string/jumbo v4, "[included]"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDED:Ljava/lang/String;

    const-string/jumbo v4, "base"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_BASE:Ljava/lang/String;

    new-instance v4, Lorg/apache/xerces/xni/QName;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    sget-object v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_BASE:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v9, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_BASE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->XML_BASE_QNAME:Lorg/apache/xerces/xni/QName;

    const-string/jumbo v4, "lang"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_LANG:Ljava/lang/String;

    new-instance v4, Lorg/apache/xerces/xni/QName;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    sget-object v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_LANG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v9, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_LANG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->XML_LANG_QNAME:Lorg/apache/xerces/xni/QName;

    new-instance v4, Lorg/apache/xerces/xni/QName;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    const-string/jumbo v7, ""

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v9, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->NEW_NS_ATTR_QNAME:Lorg/apache/xerces/xni/QName;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const-string/jumbo v7, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    const-string/jumbo v7, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x2

    const-string/jumbo v7, "http://apache.org/xml/features/xinclude/fixup-language"

    aput-object v7, v5, v6

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Boolean;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v5, v6

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x2

    const-string/jumbo v7, "http://apache.org/xml/properties/security-manager"

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x3

    const-string/jumbo v7, "http://apache.org/xml/properties/input-buffer-size"

    aput-object v7, v5, v6

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/Integer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/16 v9, 0x800

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    const/16 v4, 0x80

    new-array v4, v4, [Z

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    const/16 v4, 0x80

    new-array v4, v4, [C

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    const/16 v4, 0x80

    new-array v4, v4, [C

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    const/16 v4, 0x10

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    sput-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    const/16 v4, 0xa

    new-array v4, v4, [C

    fill-array-data v4, :array_1

    move-object v0, v4

    move-object v4, v0

    array-length v4, v4

    move v1, v4

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v1

    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    move-object v4, v0

    move v5, v3

    aget-char v4, v4, v5

    move v2, v4

    sget-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    move v5, v2

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    sget-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    move v5, v2

    sget-object v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    move v7, v2

    const/4 v8, 0x4

    shr-int/lit8 v7, v7, 0x4

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    sget-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    move v5, v2

    sget-object v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    move v7, v2

    const/16 v8, 0xf

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x20s
        0x3cs
        0x3es
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x60s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/16 v2, 0x800

    iput v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lorg/apache/xerces/xpointer/XPointerProcessor;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/XMLLocatorWrapper;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLLocatorWrapper;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lorg/apache/xerces/util/XMLLocatorWrapper;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xinclude/XIncludeMessageFormatter;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/xinclude/XIncludeMessageFormatter;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lorg/apache/xerces/xinclude/XIncludeMessageFormatter;

    move-object v1, v0

    const/16 v2, 0x8

    new-array v2, v2, [Z

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    move-object v1, v0

    const/16 v2, 0x8

    new-array v2, v2, [Z

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    move-object v1, v0

    const/16 v2, 0x8

    new-array v2, v2, [I

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v3, 0x1

    aput v3, v1, v2

    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/IntStack;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/util/IntStack;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lorg/apache/xerces/util/IntStack;

    move-object v1, v0

    new-instance v2, Ljava/util/Stack;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    move-object v1, v0

    new-instance v2, Ljava/util/Stack;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    move-object v1, v0

    new-instance v2, Ljava/util/Stack;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/IntStack;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/util/IntStack;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lorg/apache/xerces/util/IntStack;

    move-object v1, v0

    new-instance v2, Ljava/util/Stack;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    return-void
.end method

.method private checkMultipleRootElements()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getRootElementProcessed()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    const-string/jumbo v2, "MultipleRootElements"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setRootElementProcessed(Z)V

    return-void
.end method

.method private checkWhitespace(Lorg/apache/xerces/xni/XMLString;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget v4, v4, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v5, v1

    iget v5, v5, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v4, v5

    move v2, v4

    move-object v4, v1

    iget v4, v4, Lorg/apache/xerces/xni/XMLString;->offset:I

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-lt v4, v5, :cond_0

    :goto_1
    return-void

    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move v5, v3

    aget-char v4, v4, v5

    invoke-static {v4}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    const-string/jumbo v5, "ContentIllegalAtTopLevel"

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLComponentManager;Lorg/apache/xerces/util/ParserConfigurationSettings;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    :goto_0
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v5

    aput-object v11, v9, v10

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v7, v4

    move-object v8, v5

    move-object v9, v3

    move-object v10, v5

    :try_start_0
    invoke-interface {v9, v10}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v6, v7

    goto :goto_0
.end method

.method private copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLComponentManager;Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    :goto_0
    move-object v8, v1

    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-nez v8, :cond_0

    return-void

    :cond_0
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v1

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    move-object v8, v3

    move-object v9, v5

    invoke-interface {v8, v9}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v8

    move v6, v8

    move-object v8, v4

    move-object v9, v5

    move v10, v6

    :try_start_0
    invoke-interface {v8, v9, v10}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v7, v8

    goto :goto_0
.end method

.method private createInputSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    new-instance v7, Lorg/apache/xerces/util/HTTPInputSource;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/xerces/util/HTTPInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v4

    if-eqz v7, :cond_0

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    move-object v7, v6

    const-string/jumbo v8, "Accept"

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/util/HTTPInputSource;->setHTTPRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v7, v5

    if-eqz v7, :cond_1

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    move-object v7, v6

    const-string/jumbo v8, "Accept-Language"

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/util/HTTPInputSource;->setHTTPRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v7, v6

    move-object v0, v7

    return-object v0
.end method

.method private escapeHref(Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v2, v10

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move v12, v2

    const/4 v13, 0x3

    mul-int/lit8 v12, v12, 0x3

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v4, v10

    const/4 v10, 0x0

    move v5, v10

    :goto_0
    move v10, v5

    move v11, v2

    if-lt v10, v11, :cond_1

    :goto_1
    move v10, v5

    move v11, v2

    if-ge v10, v11, :cond_0

    move v10, v5

    move v6, v10

    :goto_2
    move v10, v6

    move v11, v2

    if-lt v10, v11, :cond_5

    const/4 v10, 0x0

    move-object v7, v10

    move-object v10, v1

    move v11, v5

    :try_start_0
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    move-object v7, v10

    move-object v10, v7

    array-length v10, v10

    move v2, v10

    const/4 v10, 0x0

    move v5, v10

    :goto_3
    move v10, v5

    move v11, v2

    if-lt v10, v11, :cond_c

    :cond_0
    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    move v11, v2

    if-eq v10, v11, :cond_f

    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    :goto_4
    return-object v0

    :cond_1
    move-object v10, v1

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v3, v10

    move v10, v3

    const/16 v11, 0x7e

    if-le v10, v11, :cond_2

    goto :goto_1

    :cond_2
    move v10, v3

    const/16 v11, 0x20

    if-ge v10, v11, :cond_3

    move-object v10, v1

    move-object v0, v10

    goto :goto_4

    :cond_3
    sget-object v10, Lorg/apache/xerces/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    move v11, v3

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_4

    move-object v10, v4

    const/16 v11, 0x25

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v4

    sget-object v11, Lorg/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    move v12, v3

    aget-char v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v4

    sget-object v11, Lorg/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    move v12, v3

    aget-char v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move-object v10, v4

    move v11, v3

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    goto :goto_5

    :cond_5
    move-object v10, v1

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v3, v10

    move v10, v3

    const/16 v11, 0x20

    if-lt v10, v11, :cond_6

    move v10, v3

    const/16 v11, 0x7e

    if-le v10, v11, :cond_9

    :cond_6
    move v10, v3

    const/16 v11, 0xa0

    if-lt v10, v11, :cond_7

    move v10, v3

    const v11, 0xd7ff

    if-le v10, v11, :cond_9

    :cond_7
    move v10, v3

    const v11, 0xf900

    if-lt v10, v11, :cond_8

    move v10, v3

    const v11, 0xfdcf

    if-le v10, v11, :cond_9

    :cond_8
    move v10, v3

    const v11, 0xfdf0

    if-lt v10, v11, :cond_a

    move v10, v3

    const v11, 0xffef

    if-gt v10, v11, :cond_a

    :cond_9
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_a
    move v10, v3

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_b

    add-int/lit8 v6, v6, 0x1

    move v10, v6

    move v11, v2

    if-ge v10, v11, :cond_b

    move-object v10, v1

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v7, v10

    move v10, v7

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_b

    move v10, v3

    int-to-char v10, v10

    move v11, v7

    int-to-char v11, v11

    invoke-static {v10, v11}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v10

    move v7, v10

    move v10, v7

    const/high16 v11, 0xf0000

    if-ge v10, v11, :cond_b

    move v10, v7

    const v11, 0xffff

    and-int/2addr v10, v11

    const v11, 0xfffd

    if-gt v10, v11, :cond_b

    goto :goto_6

    :cond_b
    move-object v10, v1

    move-object v0, v10

    goto/16 :goto_4

    :catch_0
    move-exception v10

    move-object v9, v10

    move-object v10, v1

    move-object v0, v10

    goto/16 :goto_4

    :cond_c
    move-object v10, v7

    move v11, v5

    aget-byte v10, v10, v11

    move v8, v10

    move v10, v8

    if-gez v10, :cond_d

    move v10, v8

    const/16 v11, 0x100

    add-int/lit16 v10, v10, 0x100

    move v3, v10

    move-object v10, v4

    const/16 v11, 0x25

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v4

    sget-object v11, Lorg/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    move v12, v3

    const/4 v13, 0x4

    shr-int/lit8 v12, v12, 0x4

    aget-char v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v4

    sget-object v11, Lorg/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    move v12, v3

    const/16 v13, 0xf

    and-int/lit8 v12, v12, 0xf

    aget-char v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_d
    sget-object v10, Lorg/apache/xerces/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    move v11, v8

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_e

    move-object v10, v4

    const/16 v11, 0x25

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v4

    sget-object v11, Lorg/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    move v12, v8

    aget-char v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v4

    sget-object v11, Lorg/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    move v12, v8

    aget-char v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    goto :goto_7

    :cond_e
    move-object v10, v4

    move v11, v8

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    goto :goto_7

    :cond_f
    move-object v10, v1

    move-object v0, v10

    goto/16 :goto_4
.end method

.method private getIncludeParentBaseURI()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentDepth()I

    move-result v2

    move v1, v2

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentBaseURI()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getBaseURI(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private getIncludeParentDepth()I
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    :goto_0
    move v2, v1

    if-gez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private getIncludeParentLanguage()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentDepth()I

    move-result v2

    move v1, v2

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentLanguage()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getLanguage(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private getResultDepth()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    move v0, v1

    return v0
.end method

.method private getRootElementProcessed()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSeenRootElement:Z

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getRootElementProcessed()Z

    move-result v1

    goto :goto_0
.end method

.method private isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    if-eq v3, v4, :cond_0

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isValidInHTTPHeader(Ljava/lang/String;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    :goto_0
    move v4, v3

    if-gez v4, :cond_0

    const/4 v4, 0x1

    move v0, v4

    :goto_1
    return v0

    :cond_0
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v2, v4

    move v4, v2

    const/16 v5, 0x20

    if-lt v4, v5, :cond_1

    move v4, v2

    const/16 v5, 0x7e

    if-le v4, v5, :cond_2

    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method private reportError(Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v6, "http://www.w3.org/TR/xinclude"

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    return-void
.end method

.method private scopeOfBaseURI(I)I
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lorg/apache/xerces/util/IntStack;

    invoke-virtual {v3}, Lorg/apache/xerces/util/IntStack;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-gez v3, :cond_0

    const/4 v3, -0x1

    move v0, v3

    :goto_1
    return v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lorg/apache/xerces/util/IntStack;

    move v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/IntStack;->elementAt(I)I

    move-result v3

    move v4, v1

    if-gt v3, v4, :cond_1

    move v3, v2

    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private scopeOfLanguage(I)I
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lorg/apache/xerces/util/IntStack;

    invoke-virtual {v3}, Lorg/apache/xerces/util/IntStack;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-gez v3, :cond_0

    const/4 v3, -0x1

    move v0, v3

    :goto_1
    return v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lorg/apache/xerces/util/IntStack;

    move v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/IntStack;->elementAt(I)I

    move-result v3

    move v4, v1

    if-gt v3, v4, :cond_1

    move v3, v2

    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private setErrorReporter(Lorg/apache/xerces/impl/XMLErrorReporter;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/xinclude"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lorg/apache/xerces/xinclude/XIncludeMessageFormatter;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lorg/apache/xerces/xni/XMLLocator;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lorg/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    :cond_0
    return-void
.end method

.method private setRootElementProcessed(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSeenRootElement:Z

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setRootElementProcessed(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected addNotation(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v5, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;-><init>()V

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    move-object v5, v4

    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->systemId:Ljava/lang/String;

    move-object v5, v4

    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->publicId:Ljava/lang/String;

    move-object v5, v4

    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->baseURI:Ljava/lang/String;

    move-object v5, v4

    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->expandedSystemId:Ljava/lang/String;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->augmentations:Lorg/apache/xerces/xni/Augmentations;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    return-void
.end method

.method protected addUnparsedEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    new-instance v6, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;-><init>()V

    move-object v5, v6

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v2

    invoke-interface {v7}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->systemId:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v2

    invoke-interface {v7}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->publicId:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v2

    invoke-interface {v7}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->baseURI:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v2

    invoke-interface {v7}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->expandedSystemId:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->augmentations:Lorg/apache/xerces/xni/Augmentations;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    return-void
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 18
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

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-interface/range {v9 .. v17}, Lorg/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v3, :cond_1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->checkWhitespace(Lorg/apache/xerces/xni/XMLString;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    goto :goto_0
.end method

.method protected checkAndSendNotation(Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move v2, v4

    move v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    new-instance v4, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->publicId:Ljava/lang/String;

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->systemId:Ljava/lang/String;

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->baseURI:Ljava/lang/String;

    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->expandedSystemId:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    move-object v6, v3

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->augmentations:Lorg/apache/xerces/xni/Augmentations;

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->addNotation(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    move-object v6, v3

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->augmentations:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;

    move-object v3, v4

    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->isDuplicate(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    const-string/jumbo v5, "NonDuplicateNotation"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->checkAndSendNotation(Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;)V

    goto :goto_0
.end method

.method protected checkAndSendUnparsedEntity(Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move v2, v4

    move v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    new-instance v4, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->publicId:Ljava/lang/String;

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->systemId:Ljava/lang/String;

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->baseURI:Ljava/lang/String;

    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->expandedSystemId:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    move-object v6, v3

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->augmentations:Lorg/apache/xerces/xni/Augmentations;

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->addUnparsedEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    move-object v6, v3

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->augmentations:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    move-object v3, v4

    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->isDuplicate(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    const-string/jumbo v5, "NonDuplicateUnparsedEntity"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->checkAndSendUnparsedEntity(Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;)V

    goto :goto_0
.end method

.method protected checkNotation(Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v4, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;-><init>()V

    move-object v2, v4

    move-object v4, v2

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;

    move-object v2, v4

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->checkAndSendNotation(Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;)V

    :cond_0
    return-void
.end method

.method protected checkUnparsedEntity(Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v4, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;-><init>()V

    move-object v2, v4

    move-object v4, v2

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    move-object v2, v4

    move-object v4, v0

    move-object v5, v2

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->checkNotation(Ljava/lang/String;)V

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->checkAndSendUnparsedEntity(Lorg/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;)V

    :cond_0
    return-void
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDocumentHandler;->comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected copyFeatures(Lorg/apache/xerces/xni/parser/XMLComponentManager;Lorg/apache/xerces/util/ParserConfigurationSettings;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Lorg/apache/xerces/impl/Constants;->getXercesFeatures()Ljava/util/Enumeration;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move-object v5, v3

    const-string/jumbo v6, "http://apache.org/xml/features/"

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLComponentManager;Lorg/apache/xerces/util/ParserConfigurationSettings;)V

    invoke-static {}, Lorg/apache/xerces/impl/Constants;->getSAXFeatures()Ljava/util/Enumeration;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move-object v5, v3

    const-string/jumbo v6, "http://xml.org/sax/features/"

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLComponentManager;Lorg/apache/xerces/util/ParserConfigurationSettings;)V

    return-void
.end method

.method protected copyFeatures(Lorg/apache/xerces/xni/parser/XMLComponentManager;Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Lorg/apache/xerces/impl/Constants;->getXercesFeatures()Ljava/util/Enumeration;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move-object v5, v3

    const-string/jumbo v6, "http://apache.org/xml/features/"

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLComponentManager;Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    invoke-static {}, Lorg/apache/xerces/impl/Constants;->getSAXFeatures()Ljava/util/Enumeration;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move-object v5, v3

    const-string/jumbo v6, "http://xml.org/sax/features/"

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLComponentManager;Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
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

    invoke-virtual {v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
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

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
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

    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState(I)I

    move-result v6

    move v4, v6

    move v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    :goto_0
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->processXMLBaseAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->processXMLLangAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V

    :cond_0
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isIncludeElement(Lorg/apache/xerces/xni/QName;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->handleIncludeElement(Lorg/apache/xerces/xni/XMLAttributes;)Z

    move-result v6

    move v5, v6

    move v6, v5

    if-eqz v6, :cond_4

    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    :cond_1
    :goto_1
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setSawFallback(IZ)V

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lorg/apache/xerces/util/IntStack;

    invoke-virtual {v6}, Lorg/apache/xerces/util/IntStack;->size()I

    move-result v6

    if-lez v6, :cond_2

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lorg/apache/xerces/util/IntStack;

    invoke-virtual {v7}, Lorg/apache/xerces/util/IntStack;->peek()I

    move-result v7

    if-ne v6, v7, :cond_2

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->restoreBaseURI()V

    :cond_2
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    return-void

    :cond_3
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_0

    :cond_4
    move-object v6, v0

    const-string/jumbo v7, "NoFallback"

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isFallbackElement(Lorg/apache/xerces/xni/QName;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->handleFallbackElement()V

    goto :goto_1

    :cond_6
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lorg/apache/xerces/xni/QName;)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, v0

    const-string/jumbo v7, "IncludeChild"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v0

    const-string/jumbo v7, "FallbackChild"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v6, :cond_9

    move-object v6, v0

    invoke-direct {v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    :cond_9
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v6, :cond_1

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v6

    move-object v3, v6

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->processAttributes(Lorg/apache/xerces/xni/XMLAttributes;)Lorg/apache/xerces/xni/XMLAttributes;

    move-result-object v6

    move-object v2, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    :cond_a
    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v6, :cond_b

    move-object v6, v0

    invoke-direct {v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    :cond_b
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v6, :cond_1

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v6

    move-object v3, v6

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->processAttributes(Lorg/apache/xerces/xni/XMLAttributes;)Lorg/apache/xerces/xni/XMLAttributes;

    move-result-object v6

    move-object v2, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1
.end method

.method public endAttlist(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endConditional(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->endConditional(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endDTD(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->endDTD(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    return-void
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

    invoke-virtual {v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSeenRootElement:Z

    if-nez v2, :cond_0

    move-object v2, v0

    const-string/jumbo v3, "RootElementRequired"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isIncludeElement(Lorg/apache/xerces/xni/QName;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    const-string/jumbo v4, "NoFallback"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isFallbackElement(Lorg/apache/xerces/xni/QName;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    :cond_1
    :goto_0
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setSawFallback(IZ)V

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lorg/apache/xerces/util/IntStack;

    invoke-virtual {v3}, Lorg/apache/xerces/util/IntStack;->size()I

    move-result v3

    if-lez v3, :cond_2

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lorg/apache/xerces/util/IntStack;

    invoke-virtual {v4}, Lorg/apache/xerces/util/IntStack;->peek()I

    move-result v4

    if-ne v3, v4, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->restoreBaseURI()V

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lorg/apache/xerces/util/IntStack;

    invoke-virtual {v3}, Lorg/apache/xerces/util/IntStack;->size()I

    move-result v3

    if-lez v3, :cond_3

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lorg/apache/xerces/util/IntStack;

    invoke-virtual {v4}, Lorg/apache/xerces/util/IntStack;->peek()I

    move-result v4

    if-ne v3, v4, :cond_3

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->restoreLanguage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    :cond_3
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    return-void

    :cond_4
    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
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

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->endExternalSubset(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
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

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public getBaseURI(I)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->scopeOfBaseURI(I)I

    move-result v3

    move v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    return-object v0
.end method

.method public getDTDHandler()Lorg/apache/xerces/xni/XMLDTDHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getDTDSource()Lorg/apache/xerces/xni/parser/XMLDTDSource;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDSource:Lorg/apache/xerces/xni/parser/XMLDTDSource;

    move-object v0, v1

    return-object v0
.end method

.method public getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-object v0, v1

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    sget-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    sget-object v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getLanguage(I)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->scopeOfLanguage(I)I

    move-result v3

    move v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    sget-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    sget-object v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 2

    move-object v0, p0

    sget-object v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 2

    move-object v0, p0

    sget-object v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method protected getRelativeBaseURI()Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object v13, v0

    invoke-direct {v13}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentDepth()I

    move-result v13

    move v1, v13

    move-object v13, v0

    move v14, v1

    invoke-virtual {v13, v14}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getRelativeURI(I)Ljava/lang/String;

    move-result-object v13

    move-object v2, v13

    move-object v13, v0

    invoke-virtual {v13}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v13, v2

    move-object v0, v13

    :goto_0
    return-object v0

    :cond_0
    move-object v13, v2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v13}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v13

    move-object v2, v13

    :cond_1
    move v13, v1

    if-nez v13, :cond_b

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    if-nez v13, :cond_2

    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v14}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getRelativeBaseURI()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    :cond_2
    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_3

    move-object v13, v2

    move-object v0, v13

    goto :goto_0

    :cond_3
    new-instance v13, Lorg/apache/xerces/util/URI;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v0

    iget-object v15, v15, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    const/16 v16, 0x1

    invoke-direct/range {v14 .. v16}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    move-object v3, v13

    new-instance v13, Lorg/apache/xerces/util/URI;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    move-object/from16 v16, v2

    invoke-direct/range {v14 .. v16}, Lorg/apache/xerces/util/URI;-><init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V

    move-object v4, v13

    move-object v13, v3

    invoke-virtual {v13}, Lorg/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    move-object v13, v4

    invoke-virtual {v13}, Lorg/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    move-object v13, v0

    move-object v14, v5

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object v13, v2

    move-object v0, v13

    goto :goto_0

    :cond_4
    move-object v13, v3

    invoke-virtual {v13}, Lorg/apache/xerces/util/URI;->getAuthority()Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    move-object v13, v4

    invoke-virtual {v13}, Lorg/apache/xerces/util/URI;->getAuthority()Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    move-object v13, v0

    move-object v14, v7

    move-object v15, v8

    invoke-direct {v13, v14, v15}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    move-object v13, v4

    invoke-virtual {v13}, Lorg/apache/xerces/util/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    goto/16 :goto_0

    :cond_5
    move-object v13, v4

    invoke-virtual {v13}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    move-object v13, v4

    invoke-virtual {v13}, Lorg/apache/xerces/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    move-object v13, v4

    invoke-virtual {v13}, Lorg/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    move-object v13, v10

    if-nez v13, :cond_6

    move-object v13, v11

    if-eqz v13, :cond_a

    :cond_6
    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v12, v13

    move-object v13, v9

    if-eqz v13, :cond_7

    move-object v13, v12

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    :cond_7
    move-object v13, v10

    if-eqz v13, :cond_8

    move-object v13, v12

    const/16 v14, 0x3f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object v13, v12

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    :cond_8
    move-object v13, v11

    if-eqz v13, :cond_9

    move-object v13, v12

    const/16 v14, 0x23

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object v13, v12

    move-object v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    :cond_9
    move-object v13, v12

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    goto/16 :goto_0

    :cond_a
    move-object v13, v9

    move-object v0, v13

    goto/16 :goto_0

    :cond_b
    move-object v13, v2

    move-object v0, v13

    goto/16 :goto_0
.end method

.method public getRelativeURI(I)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->scopeOfBaseURI(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v2, v5

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lorg/apache/xerces/util/IntStack;

    invoke-virtual {v6}, Lorg/apache/xerces/util/IntStack;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    const-string/jumbo v5, ""

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Lorg/apache/xerces/util/URI;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "file"

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v5

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v4, v5

    :goto_1
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lorg/apache/xerces/util/IntStack;

    invoke-virtual {v6}, Lorg/apache/xerces/util/IntStack;->size()I

    move-result v6

    if-lt v5, v6, :cond_1

    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    :cond_1
    new-instance v5, Lorg/apache/xerces/util/URI;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/util/URI;-><init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V

    move-object v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected getSawFallback(I)Z
    .locals 4

    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v3, v3

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    move v3, v1

    aget-boolean v2, v2, v3

    move v0, v2

    goto :goto_0
.end method

.method protected getSawInclude(I)Z
    .locals 4

    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v3, v3

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    move v3, v1

    aget-boolean v2, v2, v3

    move v0, v2

    goto :goto_0
.end method

.method protected getState()I
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    aget v1, v1, v2

    move v0, v1

    return v0
.end method

.method protected getState(I)I
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    return v0
.end method

.method protected handleFallbackElement()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    const-string/jumbo v2, "FallbackParent"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v1}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {v1, v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v0

    const-string/jumbo v2, "MultipleFallbacks"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :goto_1
    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    :cond_2
    goto :goto_0

    :cond_3
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setSawFallback(IZ)V

    goto :goto_1
.end method

.method protected handleIncludeElement(Lorg/apache/xerces/xni/XMLAttributes;)Z
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    move/from16 v21, v0

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v20, v2

    const-string/jumbo v21, "IncludeChild"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    sget-object v25, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDE:Ljava/lang/String;

    aput-object v25, v23, v24

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/16 v20, 0x1

    move/from16 v2, v20

    :goto_0
    return v2

    :cond_1
    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    move/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    move-object/from16 v20, v3

    sget-object v21, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_HREF:Ljava/lang/String;

    invoke-interface/range {v20 .. v21}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v4, v20

    move-object/from16 v20, v3

    sget-object v21, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_PARSE:Ljava/lang/String;

    invoke-interface/range {v20 .. v21}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v5, v20

    move-object/from16 v20, v3

    const-string/jumbo v21, "xpointer"

    invoke-interface/range {v20 .. v21}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v6, v20

    move-object/from16 v20, v3

    sget-object v21, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT:Ljava/lang/String;

    invoke-interface/range {v20 .. v21}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v7, v20

    move-object/from16 v20, v3

    sget-object v21, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT_LANGUAGE:Ljava/lang/String;

    invoke-interface/range {v20 .. v21}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v8, v20

    move-object/from16 v20, v5

    if-nez v20, :cond_2

    sget-object v20, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    move-object/from16 v5, v20

    :cond_2
    move-object/from16 v20, v4

    if-nez v20, :cond_3

    sget-object v20, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v4, v20

    :cond_3
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_4

    sget-object v20, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v20, v6

    if-nez v20, :cond_16

    move-object/from16 v20, v2

    const-string/jumbo v21, "XpointerMissing"

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_4
    const/16 v20, 0x0

    move-object/from16 v9, v20

    :try_start_0
    new-instance v20, Lorg/apache/xerces/util/URI;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v4

    const/16 v23, 0x1

    invoke-direct/range {v21 .. v23}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v9, v20

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_5

    move-object/from16 v20, v2

    const-string/jumbo v21, "HrefFragmentIdentifierIllegal"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v4

    aput-object v25, v23, v24

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    move-object/from16 v20, v7

    if-eqz v20, :cond_6

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    invoke-direct/range {v20 .. v21}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isValidInHTTPHeader(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    move-object/from16 v20, v2

    const-string/jumbo v21, "AcceptMalformed"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v20, 0x0

    move-object/from16 v7, v20

    :cond_6
    move-object/from16 v20, v8

    if-eqz v20, :cond_7

    move-object/from16 v20, v2

    move-object/from16 v21, v8

    invoke-direct/range {v20 .. v21}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isValidInHTTPHeader(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_7

    move-object/from16 v20, v2

    const-string/jumbo v21, "AcceptLanguageMalformed"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v20, 0x0

    move-object/from16 v8, v20

    :cond_7
    const/16 v20, 0x0

    move-object/from16 v10, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    :try_start_1
    new-instance v20, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    const/16 v22, 0x0

    move-object/from16 v23, v4

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v25, v4

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v21 .. v25}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object/from16 v20, v0

    move-object/from16 v21, v11

    invoke-interface/range {v20 .. v21}, Lorg/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v20

    move-object/from16 v10, v20

    move-object/from16 v20, v10

    if-eqz v20, :cond_9

    move-object/from16 v20, v10

    move-object/from16 v0, v20

    instance-of v0, v0, Lorg/apache/xerces/util/HTTPInputSource;

    move/from16 v20, v0

    if-nez v20, :cond_9

    move-object/from16 v20, v7

    if-nez v20, :cond_8

    move-object/from16 v20, v8

    if-eqz v20, :cond_9

    :cond_8
    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v20

    if-nez v20, :cond_9

    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v20

    if-nez v20, :cond_9

    move-object/from16 v20, v2

    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    invoke-direct/range {v20 .. v25}, Lorg/apache/xerces/xinclude/XIncludeHandler;->createInputSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v20

    move-object/from16 v10, v20

    :cond_9
    move-object/from16 v20, v10

    if-nez v20, :cond_b

    move-object/from16 v20, v7

    if-nez v20, :cond_a

    move-object/from16 v20, v8

    if-eqz v20, :cond_1a

    :cond_a
    move-object/from16 v20, v2

    const/16 v21, 0x0

    move-object/from16 v22, v4

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    invoke-direct/range {v20 .. v25}, Lorg/apache/xerces/xinclude/XIncludeHandler;->createInputSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v20

    move-object/from16 v10, v20

    :cond_b
    :goto_2
    move-object/from16 v20, v5

    sget-object v21, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_24

    move-object/from16 v20, v6

    if-eqz v20, :cond_c

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    :cond_c
    move-object/from16 v20, v6

    if-nez v20, :cond_13

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v20, v0

    if-nez v20, :cond_13

    :cond_d
    const-string/jumbo v20, "org.apache.xerces.parsers.XIncludeParserConfiguration"

    move-object/from16 v11, v20

    move-object/from16 v20, v6

    if-eqz v20, :cond_e

    const-string/jumbo v20, "org.apache.xerces.parsers.XPointerParserConfiguration"

    move-object/from16 v11, v20

    :cond_e
    move-object/from16 v20, v2

    move-object/from16 v21, v11

    invoke-static {}, Lorg/apache/xerces/xinclude/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lorg/apache/xerces/xinclude/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v20, v0

    const-string/jumbo v21, "http://apache.org/xml/properties/internal/symbol-table"

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v20, v0

    const-string/jumbo v21, "http://apache.org/xml/properties/internal/error-reporter"

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v20, v0

    const-string/jumbo v21, "http://apache.org/xml/properties/internal/entity-resolver"

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v20, v0

    const-string/jumbo v21, "http://apache.org/xml/properties/security-manager"

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v20, v0

    const-string/jumbo v21, "http://apache.org/xml/properties/input-buffer-size"

    new-instance v22, Ljava/lang/Integer;

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    move/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface/range {v20 .. v22}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v20, v2

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v20, v0

    const-string/jumbo v21, "http://apache.org/xml/properties/internal/namespace-context"

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v20, v0

    const-string/jumbo v21, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    move/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v20, v0

    const-string/jumbo v21, "http://apache.org/xml/features/xinclude/fixup-language"

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    move/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object/from16 v20, v6

    if-eqz v20, :cond_1d

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v20, v0

    const-string/jumbo v21, "http://apache.org/xml/properties/internal/xpointer-handler"

    invoke-interface/range {v20 .. v21}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/xerces/xpointer/XPointerHandler;

    move-object/from16 v12, v20

    move-object/from16 v20, v2

    move-object/from16 v21, v12

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lorg/apache/xerces/xpointer/XPointerProcessor;

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lorg/apache/xerces/xpointer/XPointerProcessor;

    move-object/from16 v20, v0

    check-cast v20, Lorg/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v21, "http://apache.org/xml/properties/internal/namespace-context"

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lorg/apache/xerces/xpointer/XPointerProcessor;

    move-object/from16 v20, v0

    check-cast v20, Lorg/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v21, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1b

    sget-object v22, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lorg/apache/xerces/xpointer/XPointerProcessor;

    move-object/from16 v20, v0

    check-cast v20, Lorg/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v21, "http://apache.org/xml/features/xinclude/fixup-language"

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1c

    sget-object v22, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lorg/apache/xerces/xpointer/XPointerProcessor;

    move-object/from16 v20, v0

    check-cast v20, Lorg/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v21, "http://apache.org/xml/properties/internal/error-reporter"

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    move-object/from16 v20, v12

    move-object/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler;->setParent(Lorg/apache/xerces/xinclude/XIncludeHandler;)V

    move-object/from16 v20, v12

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler;->setHref(Ljava/lang/String;)V

    move-object/from16 v20, v12

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lorg/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler;->setXIncludeLocator(Lorg/apache/xerces/util/XMLLocatorWrapper;)V

    move-object/from16 v20, v12

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/xpointer/XPointerHandler;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    :cond_13
    :goto_5
    move-object/from16 v20, v6

    if-eqz v20, :cond_1e

    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v20, v2

    :try_start_2
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lorg/apache/xerces/xpointer/XPointerProcessor;

    move-object/from16 v20, v0

    move-object/from16 v21, v6

    invoke-interface/range {v20 .. v21}, Lorg/apache/xerces/xpointer/XPointerProcessor;->parseXPointer(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_6
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lorg/apache/xerces/util/ParserConfigurationSettings;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xinclude/XIncludeHandler;->copyFeatures(Lorg/apache/xerces/xni/parser/XMLComponentManager;Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    :cond_14
    move-object/from16 v20, v2

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    move-object/from16 v20, v2

    const/16 v21, 0x0

    :try_start_3
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->pushScope()V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v21, v10

    invoke-interface/range {v20 .. v21}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lorg/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lorg/apache/xerces/xni/XMLLocator;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/XMLLocatorWrapper;->setLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lorg/apache/xerces/xni/XMLLocator;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    :cond_15
    move-object/from16 v20, v6

    if-eqz v20, :cond_20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lorg/apache/xerces/xpointer/XPointerProcessor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/xerces/xpointer/XPointerProcessor;->isXPointerResolved()Z

    move-result v20

    if-nez v20, :cond_20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1f

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v20

    :goto_7
    move-object/from16 v11, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lorg/apache/xerces/xinclude/XIncludeMessageFormatter;

    move-object/from16 v20, v0

    move-object/from16 v21, v11

    const-string/jumbo v22, "XPointerResolutionUnsuccessful"

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xerces/xinclude/XIncludeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v12, v20

    move-object/from16 v20, v2

    const-string/jumbo v21, "XMLResourceError"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v4

    aput-object v25, v23, v24

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x1

    move-object/from16 v25, v12

    aput-object v25, v23, v24

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v20, 0x0

    move/from16 v13, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    move/from16 v20, v13

    move/from16 v2, v20

    goto/16 :goto_0

    :cond_16
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_17

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v20

    :goto_8
    move-object/from16 v9, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lorg/apache/xerces/xinclude/XIncludeMessageFormatter;

    move-object/from16 v20, v0

    move-object/from16 v21, v9

    const-string/jumbo v22, "XPointerStreamability"

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xerces/xinclude/XIncludeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v10, v20

    move-object/from16 v20, v2

    const-string/jumbo v21, "XMLResourceError"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v4

    aput-object v25, v23, v24

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x1

    move-object/from16 v25, v10

    aput-object v25, v23, v24

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0

    :cond_17
    const/16 v20, 0x0

    goto :goto_8

    :catch_0
    move-exception v20

    move-object/from16 v10, v20

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    invoke-direct/range {v20 .. v21}, Lorg/apache/xerces/xinclude/XIncludeHandler;->escapeHref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v11, v20

    move-object/from16 v20, v4

    move-object/from16 v21, v11

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_19

    move-object/from16 v20, v11

    move-object/from16 v4, v20

    :try_start_4
    new-instance v20, Lorg/apache/xerces/util/URI;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v4

    const/16 v23, 0x1

    invoke-direct/range {v21 .. v23}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v9, v20

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_18

    move-object/from16 v20, v2

    const-string/jumbo v21, "HrefFragmentIdentifierIllegal"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v4

    aput-object v25, v23, v24

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_18
    goto/16 :goto_1

    :catch_1
    move-exception v20

    move-object/from16 v12, v20

    move-object/from16 v20, v2

    const-string/jumbo v21, "HrefSyntacticallyInvalid"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v4

    aput-object v25, v23, v24

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_19
    move-object/from16 v20, v2

    const-string/jumbo v21, "HrefSyntacticallyInvalid"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v4

    aput-object v25, v23, v24

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_2
    move-exception v20

    move-object/from16 v11, v20

    move-object/from16 v20, v2

    const-string/jumbo v21, "XMLResourceError"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v4

    aput-object v25, v23, v24

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x1

    move-object/from16 v25, v11

    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v23, v11

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0

    :cond_1a
    new-instance v20, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    const/16 v22, 0x0

    move-object/from16 v23, v4

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v21 .. v24}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, v20

    goto/16 :goto_2

    :cond_1b
    sget-object v22, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_3

    :cond_1c
    sget-object v22, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_4

    :cond_1d
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v20, v0

    const-string/jumbo v21, "http://apache.org/xml/properties/internal/xinclude-handler"

    invoke-interface/range {v20 .. v21}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object/from16 v12, v20

    move-object/from16 v20, v12

    move-object/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setParent(Lorg/apache/xerces/xinclude/XIncludeHandler;)V

    move-object/from16 v20, v12

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setHref(Ljava/lang/String;)V

    move-object/from16 v20, v12

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lorg/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setXIncludeLocator(Lorg/apache/xerces/util/XMLLocatorWrapper;)V

    move-object/from16 v20, v12

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    goto/16 :goto_5

    :catch_3
    move-exception v20

    move-object/from16 v11, v20

    move-object/from16 v20, v2

    const-string/jumbo v21, "XMLResourceError"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v4

    aput-object v25, v23, v24

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x1

    move-object/from16 v25, v11

    invoke-virtual/range {v25 .. v25}, Lorg/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    goto/16 :goto_6

    :cond_1f
    const/16 v20, 0x0

    goto/16 :goto_7

    :cond_20
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    :goto_9
    const/16 v20, 0x1

    move/from16 v2, v20

    goto/16 :goto_0

    :catch_4
    move-exception v20

    move-object/from16 v11, v20

    move-object/from16 v20, v2

    :try_start_5
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lorg/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lorg/apache/xerces/xni/XMLLocator;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/XMLLocatorWrapper;->setLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_21

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lorg/apache/xerces/xni/XMLLocator;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    :cond_21
    move-object/from16 v20, v2

    const-string/jumbo v21, "XMLParseError"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v4

    aput-object v25, v23, v24

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    goto :goto_9

    :catch_5
    move-exception v20

    move-object/from16 v12, v20

    move-object/from16 v20, v2

    :try_start_6
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lorg/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lorg/apache/xerces/xni/XMLLocator;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/XMLLocatorWrapper;->setLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_22

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lorg/apache/xerces/xni/XMLLocator;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    :cond_22
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    move/from16 v20, v0

    if-eqz v20, :cond_23

    new-instance v20, Lorg/apache/xerces/xni/XNIException;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v12

    invoke-direct/range {v21 .. v22}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v20

    move-object/from16 v14, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    move-object/from16 v20, v14

    throw v20

    :cond_23
    move-object/from16 v20, v2

    :try_start_7
    const-string/jumbo v21, "XMLResourceError"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v4

    aput-object v25, v23, v24

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x1

    move-object/from16 v25, v12

    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v23, v12

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v20, 0x0

    move/from16 v13, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    move/from16 v20, v13

    move/from16 v2, v20

    goto/16 :goto_0

    :cond_24
    move-object/from16 v20, v5

    sget-object v21, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_TEXT:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2e

    move-object/from16 v20, v3

    sget-object v21, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ENCODING:Ljava/lang/String;

    invoke-interface/range {v20 .. v21}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v11, v20

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v12, v20

    move-object/from16 v20, v2

    const/16 v21, 0x0

    :try_start_8
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fIsXML11:Z

    move/from16 v20, v0

    if-nez v20, :cond_28

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v20, v0

    if-nez v20, :cond_26

    move-object/from16 v20, v2

    new-instance v21, Lorg/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v10

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    move/from16 v25, v0

    invoke-direct/range {v22 .. v25}, Lorg/apache/xerces/xinclude/XIncludeTextReader;-><init>(Lorg/apache/xerces/xni/parser/XMLInputSource;Lorg/apache/xerces/xinclude/XIncludeHandler;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

    :goto_a
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v20, v0

    move-object/from16 v12, v20

    :goto_b
    move-object/from16 v20, v12

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->setErrorReporter(Lorg/apache/xerces/impl/XMLErrorReporter;)V

    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->parse()V
    :try_end_8
    .catch Lorg/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/CharConversionException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v20, v12

    if-eqz v20, :cond_25

    move-object/from16 v20, v12

    :try_start_9
    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    :cond_25
    goto/16 :goto_9

    :cond_26
    move-object/from16 v20, v2

    :try_start_a
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v20, v0

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_a
    .catch Lorg/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/CharConversionException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_a

    :catch_6
    move-exception v20

    move-object/from16 v13, v20

    move-object/from16 v20, v2

    :try_start_b
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v20, v0

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v13

    invoke-virtual/range {v22 .. v22}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v23

    const/16 v24, 0x2

    move-object/from16 v25, v13

    invoke-virtual/range {v20 .. v25}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v20

    move-object/from16 v20, v12

    if-eqz v20, :cond_27

    move-object/from16 v20, v12

    :try_start_c
    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :cond_27
    goto/16 :goto_9

    :cond_28
    move-object/from16 v20, v2

    :try_start_d
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v20, v0

    if-nez v20, :cond_29

    move-object/from16 v20, v2

    new-instance v21, Lorg/apache/xerces/xinclude/XInclude11TextReader;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v10

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    move/from16 v25, v0

    invoke-direct/range {v22 .. v25}, Lorg/apache/xerces/xinclude/XInclude11TextReader;-><init>(Lorg/apache/xerces/xni/parser/XMLInputSource;Lorg/apache/xerces/xinclude/XIncludeHandler;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

    :goto_c
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v20, v0

    move-object/from16 v12, v20

    goto/16 :goto_b

    :cond_29
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v20, v0

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_d
    .catch Lorg/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/CharConversionException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_c

    :catch_7
    move-exception v20

    move-object/from16 v14, v20

    move-object/from16 v20, v2

    :try_start_e
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v20, v0

    const-string/jumbo v21, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v22, "CharConversionFailure"

    const/16 v23, 0x0

    const/16 v24, 0x2

    move-object/from16 v25, v14

    invoke-virtual/range {v20 .. v25}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object v20

    move-object/from16 v20, v12

    if-eqz v20, :cond_2a

    move-object/from16 v20, v12

    :try_start_f
    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    :cond_2a
    goto/16 :goto_9

    :catch_8
    move-exception v20

    move-object/from16 v15, v20

    move-object/from16 v20, v2

    :try_start_10
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2c

    new-instance v20, Lorg/apache/xerces/xni/XNIException;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v15

    invoke-direct/range {v21 .. v22}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v20
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :catchall_1
    move-exception v20

    move-object/from16 v17, v20

    move-object/from16 v20, v12

    if-eqz v20, :cond_2b

    move-object/from16 v20, v12

    :try_start_11
    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    :cond_2b
    move-object/from16 v20, v17

    throw v20

    :cond_2c
    move-object/from16 v20, v2

    :try_start_12
    const-string/jumbo v21, "TextResourceError"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v4

    aput-object v25, v23, v24

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x1

    move-object/from16 v25, v15

    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v23, v15

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    const/16 v20, 0x0

    move/from16 v16, v20

    move-object/from16 v20, v12

    if-eqz v20, :cond_2d

    move-object/from16 v20, v12

    :try_start_13
    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    :cond_2d
    move/from16 v20, v16

    move/from16 v2, v20

    goto/16 :goto_0

    :cond_2e
    move-object/from16 v20, v2

    const-string/jumbo v21, "InvalidParseValue"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v5

    aput-object v25, v23, v24

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :catch_9
    move-exception v20

    move-object/from16 v19, v20

    move-object/from16 v20, v2

    const-string/jumbo v21, "TextResourceError"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v4

    aput-object v25, v23, v24

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x1

    move-object/from16 v25, v19

    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v23, v19

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0

    :catch_a
    move-exception v20

    move-object/from16 v19, v20

    move-object/from16 v20, v2

    const-string/jumbo v21, "TextResourceError"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v4

    aput-object v25, v23, v24

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x1

    move-object/from16 v25, v19

    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v23, v19

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0

    :catch_b
    move-exception v20

    move-object/from16 v19, v20

    move-object/from16 v20, v2

    const-string/jumbo v21, "TextResourceError"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v4

    aput-object v25, v23, v24

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x1

    move-object/from16 v25, v19

    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v23, v19

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0

    :catch_c
    move-exception v20

    move-object/from16 v19, v20

    move-object/from16 v20, v2

    const-string/jumbo v21, "TextResourceError"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v4

    aput-object v25, v23, v24

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x1

    move-object/from16 v25, v19

    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v23, v19

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0

    :catch_d
    move-exception v20

    move-object/from16 v19, v20

    move-object/from16 v20, v2

    const-string/jumbo v21, "TextResourceError"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x0

    move-object/from16 v25, v4

    aput-object v25, v23, v24

    move-object/from16 v28, v22

    move-object/from16 v22, v28

    move-object/from16 v23, v28

    const/16 v24, 0x1

    move-object/from16 v25, v19

    invoke-virtual/range {v25 .. v25}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v23, v19

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0
.end method

.method protected hasXIncludeNamespace(Lorg/apache/xerces/xni/QName;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_NS_URI:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_NS_URI:Ljava/lang/String;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public ignoredCharacters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->ignoredCharacters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
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

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method protected isFallbackElement(Lorg/apache/xerces/xni/QName;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_FALLBACK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lorg/apache/xerces/xni/QName;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isIncludeElement(Lorg/apache/xerces/xni/QName;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lorg/apache/xerces/xni/QName;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isRootDocument()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isTopLevelIncludedItem()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isTopLevelIncludedItemViaInclude()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isTopLevelIncludedItemViaFallback()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isTopLevelIncludedItemViaFallback()Z
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method protected isTopLevelIncludedItemViaInclude()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected modifyAugmentations(Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lorg/apache/xerces/xni/Augmentations;Z)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected modifyAugmentations(Lorg/apache/xerces/xni/Augmentations;Z)Lorg/apache/xerces/xni/Augmentations;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isTopLevelIncludedItem()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    new-instance v3, Lorg/apache/xerces/util/AugmentationsImpl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/apache/xerces/util/AugmentationsImpl;-><init>()V

    move-object v1, v3

    :cond_1
    move-object v3, v1

    sget-object v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDED:Ljava/lang/String;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_2
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public notationDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
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

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->addNotation(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method protected processAttributes(Lorg/apache/xerces/xni/XMLAttributes;)Lorg/apache/xerces/xni/XMLAttributes;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isTopLevelIncludedItem()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    if-eqz v8, :cond_1

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->sameBaseURIAsIncludeParent()Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v1

    if-nez v8, :cond_0

    new-instance v8, Lorg/apache/xerces/util/XMLAttributesImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>()V

    move-object v1, v8

    :cond_0
    const/4 v8, 0x0

    move-object v2, v8

    move-object v8, v0

    :try_start_0
    invoke-virtual {v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getRelativeBaseURI()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v2, v8

    :goto_0
    move-object v8, v1

    sget-object v9, Lorg/apache/xerces/xinclude/XIncludeHandler;->XML_BASE_QNAME:Lorg/apache/xerces/xni/QName;

    sget-object v10, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object v11, v2

    invoke-interface {v8, v9, v10, v11}, Lorg/apache/xerces/xni/XMLAttributes;->addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move v3, v8

    move-object v8, v1

    move v9, v3

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lorg/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    :cond_1
    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    if-eqz v8, :cond_3

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->sameLanguageAsIncludeParent()Z

    move-result v8

    if-nez v8, :cond_3

    move-object v8, v1

    if-nez v8, :cond_2

    new-instance v8, Lorg/apache/xerces/util/XMLAttributesImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>()V

    move-object v1, v8

    :cond_2
    move-object v8, v1

    sget-object v9, Lorg/apache/xerces/xinclude/XIncludeHandler;->XML_LANG_QNAME:Lorg/apache/xerces/xni/QName;

    sget-object v10, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-interface {v8, v9, v10, v11}, Lorg/apache/xerces/xni/XMLAttributes;->addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move v2, v8

    move-object v8, v1

    move v9, v2

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lorg/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v8}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->getAllPrefixes()Ljava/util/Enumeration;

    move-result-object v8

    move-object v2, v8

    :cond_4
    :goto_1
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-nez v8, :cond_7

    :cond_5
    move-object v8, v1

    if-eqz v8, :cond_6

    move-object v8, v1

    invoke-interface {v8}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v8

    move v2, v8

    const/4 v8, 0x0

    move v3, v8

    :goto_2
    move v8, v3

    move v9, v2

    if-lt v8, v9, :cond_e

    :cond_6
    move-object v8, v1

    move-object v0, v8

    return-object v0

    :catch_0
    move-exception v8

    move-object v3, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v8}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    goto :goto_0

    :cond_7
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v3, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object v9, v3

    invoke-virtual {v8, v9}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->getURIFromIncludeParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object v9, v3

    invoke-virtual {v8, v9}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    move-object v8, v4

    move-object v9, v5

    if-eq v8, v9, :cond_4

    move-object v8, v1

    if-eqz v8, :cond_4

    move-object v8, v3

    sget-object v9, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v8, v9, :cond_a

    move-object v8, v1

    sget-object v9, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    sget-object v10, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    move-object v8, v1

    if-nez v8, :cond_8

    new-instance v8, Lorg/apache/xerces/util/XMLAttributesImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>()V

    move-object v1, v8

    :cond_8
    sget-object v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->NEW_NS_ATTR_QNAME:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v8}, Lorg/apache/xerces/xni/QName;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/xni/QName;

    move-object v6, v8

    move-object v8, v6

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v8, v6

    sget-object v9, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    iput-object v9, v8, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v8, v6

    sget-object v9, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    iput-object v9, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v8, v1

    move-object v9, v6

    sget-object v10, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object v11, v5

    if-eqz v11, :cond_9

    move-object v11, v5

    :goto_3
    invoke-interface {v8, v9, v10, v11}, Lorg/apache/xerces/xni/XMLAttributes;->addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move v7, v8

    move-object v8, v1

    move v9, v7

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lorg/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object v9, v3

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_1

    :cond_9
    sget-object v11, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_3

    :cond_a
    move-object v8, v1

    sget-object v9, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object v10, v3

    invoke-interface {v8, v9, v10}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    move-object v8, v1

    if-nez v8, :cond_b

    new-instance v8, Lorg/apache/xerces/util/XMLAttributesImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>()V

    move-object v1, v8

    :cond_b
    sget-object v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->NEW_NS_ATTR_QNAME:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v8}, Lorg/apache/xerces/xni/QName;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/xni/QName;

    move-object v6, v8

    move-object v8, v6

    move-object v9, v3

    iput-object v9, v8, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v6

    move-object v12, v8

    move-object v13, v9

    move-object v8, v13

    move-object v9, v12

    move-object v10, v13

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v8, v6

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    if-eqz v9, :cond_c

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v10, v6

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_4
    iput-object v9, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v8, v1

    move-object v9, v6

    sget-object v10, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object v11, v5

    if-eqz v11, :cond_d

    move-object v11, v5

    :goto_5
    invoke-interface {v8, v9, v10, v11}, Lorg/apache/xerces/xni/XMLAttributes;->addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move v7, v8

    move-object v8, v1

    move v9, v7

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lorg/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object v9, v3

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_1

    :cond_c
    move-object v9, v6

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_d
    sget-object v11, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_5

    :cond_e
    move-object v8, v1

    move v9, v3

    invoke-interface {v8, v9}, Lorg/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    move-object v8, v1

    move v9, v3

    invoke-interface {v8, v9}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    move-object v8, v4

    sget-object v9, Lorg/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    if-ne v8, v9, :cond_f

    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/xerces/xinclude/XIncludeHandler;->checkUnparsedEntity(Ljava/lang/String;)V

    :cond_f
    move-object v8, v4

    sget-object v9, Lorg/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    if-ne v8, v9, :cond_12

    new-instance v8, Ljava/util/StringTokenizer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v5

    invoke-direct {v9, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    :goto_6
    move-object v8, v6

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_11

    :cond_10
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_11
    move-object v8, v6

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v8, v9}, Lorg/apache/xerces/xinclude/XIncludeHandler;->checkUnparsedEntity(Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    move-object v8, v4

    sget-object v9, Lorg/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    if-ne v8, v9, :cond_10

    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/xerces/xinclude/XIncludeHandler;->checkNotation(Ljava/lang/String;)V

    goto :goto_7
.end method

.method protected processXMLBaseAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    sget-object v5, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    const-string/jumbo v6, "base"

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object v5, v2

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object v5, v3

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->saveBaseURI()V
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0
.end method

.method protected processXMLLangAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    sget-object v4, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    const-string/jumbo v5, "lang"

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->saveLanguage(Ljava/lang/String;)V

    :cond_0
    return-void
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

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected reportFatalError(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method protected reportFatalError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)V

    return-void
.end method

.method protected reportResourceError(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method protected reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)V

    return-void
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    iput v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fIsXML11:Z

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSeenRootElement:Z

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lorg/apache/xerces/util/IntStack;

    invoke-virtual {v6}, Lorg/apache/xerces/util/IntStack;->clear()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->clear()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->clear()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->clear()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lorg/apache/xerces/util/IntStack;

    invoke-virtual {v6}, Lorg/apache/xerces/util/IntStack;->clear()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->clear()V

    const/4 v6, 0x0

    move v2, v6

    :goto_1
    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    array-length v7, v7

    if-lt v6, v7, :cond_1

    const/4 v6, 0x0

    move v3, v6

    :goto_2
    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v7, v7

    if-lt v6, v7, :cond_2

    const/4 v6, 0x0

    move v4, v6

    :goto_3
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v7, v7

    if-lt v6, v7, :cond_3

    move-object v6, v1

    :try_start_0
    const-string/jumbo v7, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_4

    :goto_4
    return-void

    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getResultDepth()I

    move-result v7

    goto :goto_0

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    move v7, v2

    const/4 v8, 0x1

    aput v8, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    move v7, v3

    const/4 v8, 0x0

    aput-boolean v8, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    move v7, v4

    const/4 v8, 0x0

    aput-boolean v8, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    :goto_5
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    move-object v6, v0

    move-object v7, v1

    :try_start_1
    const-string/jumbo v8, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_6
    move-object v6, v0

    move-object v7, v1

    :try_start_2
    const-string/jumbo v8, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_7
    move-object v6, v0

    move-object v7, v1

    :try_start_3
    const-string/jumbo v8, "http://apache.org/xml/features/xinclude/fixup-language"

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v6, :cond_7

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/xinclude/fixup-language"

    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_7
    :goto_8
    move-object v6, v1

    :try_start_4
    const-string/jumbo v7, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_8

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v6, :cond_8

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/symbol-table"

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_8
    :goto_9
    move-object v6, v1

    :try_start_5
    const-string/jumbo v7, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_9

    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setErrorReporter(Lorg/apache/xerces/impl/XMLErrorReporter;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v6, :cond_9

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/error-reporter"

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_9
    :goto_a
    move-object v6, v1

    :try_start_6
    const-string/jumbo v7, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_a

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v6, :cond_a

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/entity-resolver"

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_a
    :goto_b
    move-object v6, v1

    :try_start_7
    const-string/jumbo v7, "http://apache.org/xml/properties/security-manager"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/util/SecurityManager;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_b

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v6, :cond_b

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/properties/security-manager"

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_b
    :goto_c
    move-object v6, v1

    :try_start_8
    const-string/jumbo v7, "http://apache.org/xml/properties/input-buffer-size"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_10

    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_10

    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v6, :cond_c

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/properties/input-buffer-size"

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_c
    :goto_d
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

    if-eqz v6, :cond_d

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->setBufferSize(I)V

    :cond_d
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

    if-eqz v6, :cond_e

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->setBufferSize(I)V

    :cond_e
    move-object v6, v0

    new-instance v7, Lorg/apache/xerces/util/ParserConfigurationSettings;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Lorg/apache/xerces/util/ParserConfigurationSettings;-><init>()V

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lorg/apache/xerces/util/ParserConfigurationSettings;

    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lorg/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->copyFeatures(Lorg/apache/xerces/xni/parser/XMLComponentManager;Lorg/apache/xerces/util/ParserConfigurationSettings;)V

    move-object v6, v1

    :try_start_9
    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lorg/apache/xerces/util/ParserConfigurationSettings;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    sget-object v6, Lorg/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    move-object v7, v1

    const-string/jumbo v8, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lorg/apache/xerces/util/ParserConfigurationSettings;

    const-string/jumbo v7, "http://xml.org/sax/features/validation"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V
    :try_end_9
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_9

    :cond_f
    :goto_e
    goto/16 :goto_4

    :catch_0
    move-exception v6

    move-object v5, v6

    goto/16 :goto_5

    :catch_1
    move-exception v6

    move-object v5, v6

    goto/16 :goto_6

    :catch_2
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    goto/16 :goto_7

    :catch_3
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    goto/16 :goto_8

    :catch_4
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    goto/16 :goto_9

    :catch_5
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    goto/16 :goto_a

    :catch_6
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    goto/16 :goto_b

    :catch_7
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    goto/16 :goto_c

    :cond_10
    move-object v6, v0

    move-object v7, v0

    :try_start_a
    const-string/jumbo v8, "http://apache.org/xml/properties/input-buffer-size"

    invoke-virtual {v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I
    :try_end_a
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_d

    :catch_8
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    move-object v7, v0

    const-string/jumbo v8, "http://apache.org/xml/properties/input-buffer-size"

    invoke-virtual {v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    goto/16 :goto_d

    :cond_11
    move-object v6, v1

    :try_start_b
    const-string/jumbo v7, "http://xml.org/sax/features/validation"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lorg/apache/xerces/util/ParserConfigurationSettings;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/dynamic"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V
    :try_end_b
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_e

    :catch_9
    move-exception v6

    move-object v5, v6

    goto :goto_e
.end method

.method protected restoreBaseURI()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lorg/apache/xerces/util/IntStack;

    invoke-virtual {v1}, Lorg/apache/xerces/util/IntStack;->pop()I

    move-result v1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public restoreLanguage()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lorg/apache/xerces/util/IntStack;

    invoke-virtual {v1}, Lorg/apache/xerces/util/IntStack;->pop()I

    move-result v1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method protected sameBaseURIAsIncludeParent()Z
    .locals 5

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentBaseURI()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected sameLanguageAsIncludeParent()Z
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentLanguage()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected saveBaseURI()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lorg/apache/xerces/util/IntStack;

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {v1, v2}, Lorg/apache/xerces/util/IntStack;->push(I)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-void
.end method

.method protected saveLanguage(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lorg/apache/xerces/util/IntStack;

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/IntStack;->push(I)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-void
.end method

.method protected searchForRecursiveIncludes(Ljava/lang/String;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/xinclude/XIncludeHandler;->searchForRecursiveIncludes(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    return-void
.end method

.method public setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDSource:Lorg/apache/xerces/xni/parser/XMLDTDSource;

    return-void
.end method

.method public setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    :cond_1
    return-void
.end method

.method public setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentSource:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    const-string/jumbo v4, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lorg/apache/xerces/util/ParserConfigurationSettings;

    if-eqz v3, :cond_1

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lorg/apache/xerces/util/ParserConfigurationSettings;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method protected setHref(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fHrefFromParent:Ljava/lang/String;

    return-void
.end method

.method protected setParent(Lorg/apache/xerces/xinclude/XIncludeHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lorg/apache/xerces/util/SymbolTable;

    iput-object v5, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setErrorReporter(Lorg/apache/xerces/impl/XMLErrorReporter;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    goto :goto_0

    :cond_3
    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v5, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    goto :goto_0

    :cond_5
    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v0

    move-object v5, v2

    check-cast v5, Lorg/apache/xerces/util/SecurityManager;

    iput-object v5, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v4, :cond_6

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    goto :goto_0

    :cond_7
    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/input-buffer-size"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v4, :cond_8

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    move-object v4, v3

    if-eqz v4, :cond_a

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_a

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

    if-eqz v4, :cond_9

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->setBufferSize(I)V

    :cond_9
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

    if-eqz v4, :cond_a

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lorg/apache/xerces/xinclude/XIncludeTextReader;

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->setBufferSize(I)V

    :cond_a
    goto/16 :goto_0

    :cond_b
    goto/16 :goto_0
.end method

.method protected setSawFallback(IZ)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v5, v5

    if-lt v4, v5, :cond_0

    move v4, v1

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Z

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    move v5, v1

    move v6, v2

    aput-boolean v6, v4, v5

    return-void
.end method

.method protected setSawInclude(IZ)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v5, v5

    if-lt v4, v5, :cond_0

    move v4, v1

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Z

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    move v5, v1

    move v6, v2

    aput-boolean v6, v4, v5

    return-void
.end method

.method protected setState(I)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    array-length v4, v4

    if-lt v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    move v5, v1

    aput v5, v3, v4

    return-void
.end method

.method protected setXIncludeLocator(Lorg/apache/xerces/util/XMLLocatorWrapper;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lorg/apache/xerces/util/XMLLocatorWrapper;

    return-void
.end method

.method protected setupCurrentBaseURI(Lorg/apache/xerces/xni/XMLLocator;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    :cond_0
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object v5, v2

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fHrefFromParent:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    const-string/jumbo v5, "ExpandedSystemId"

    invoke-virtual {v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startAttlist(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
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

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startConditional(SLorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->startConditional(SLorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startDTD(Lorg/apache/xerces/xni/XMLLocator;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
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

    iput-boolean v4, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->startDTD(Lorg/apache/xerces/xni/XMLLocator;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
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

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    move-object v5, v3

    instance-of v5, v5, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-nez v5, :cond_0

    move-object v5, v0

    const-string/jumbo v6, "IncompatibleNamespaceContext"

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_0
    move-object v5, v0

    move-object v6, v3

    check-cast v6, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v6, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lorg/apache/xerces/xni/XMLLocator;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lorg/apache/xerces/util/XMLLocatorWrapper;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lorg/apache/xerces/xni/XMLLocator;

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/XMLLocatorWrapper;->setLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setupCurrentBaseURI(Lorg/apache/xerces/xni/XMLLocator;)V

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->saveBaseURI()V

    move-object v5, v4

    if-nez v5, :cond_1

    new-instance v5, Lorg/apache/xerces/util/AugmentationsImpl;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lorg/apache/xerces/util/AugmentationsImpl;-><init>()V

    move-object v4, v5

    :cond_1
    move-object v5, v4

    const-string/jumbo v6, "currentBaseURI"

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->searchForRecursiveIncludes(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    const-string/jumbo v6, "RecursiveInclude"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v10}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move-object v5, v0

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v6, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->saveLanguage(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lorg/apache/xerces/util/XMLLocatorWrapper;

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_3
    return-void
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState(I)I

    move-result v6

    move v4, v6

    move v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    :goto_0
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->processXMLBaseAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->processXMLLangAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V

    :cond_0
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isIncludeElement(Lorg/apache/xerces/xni/QName;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->handleIncludeElement(Lorg/apache/xerces/xni/XMLAttributes;)Z

    move-result v6

    move v5, v6

    move v6, v5

    if-eqz v6, :cond_3

    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_0

    :cond_3
    move-object v6, v0

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_1

    :cond_4
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isFallbackElement(Lorg/apache/xerces/xni/QName;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->handleFallbackElement()V

    goto :goto_1

    :cond_5
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lorg/apache/xerces/xni/QName;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, v0

    const-string/jumbo v7, "IncludeChild"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, v0

    const-string/jumbo v7, "FallbackChild"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    move-object v12, v6

    move v13, v7

    move v6, v13

    move-object v7, v12

    move v8, v13

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v6, :cond_8

    move-object v6, v0

    invoke-direct {v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    :cond_8
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v6, :cond_1

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v6

    move-object v3, v6

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->processAttributes(Lorg/apache/xerces/xni/XMLAttributes;)Lorg/apache/xerces/xni/XMLAttributes;

    move-result-object v6

    move-object v2, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    :cond_9
    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    move-object v12, v6

    move v13, v7

    move v6, v13

    move-object v7, v12

    move v8, v13

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v6, :cond_a

    move-object v6, v0

    invoke-direct {v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    :cond_a
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v6, :cond_1

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v6

    move-object v3, v6

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeHandler;->processAttributes(Lorg/apache/xerces/xni/XMLAttributes;)Lorg/apache/xerces/xni/XMLAttributes;

    move-result-object v6

    move-object v2, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1
.end method

.method public startExternalSubset(Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->startExternalSubset(Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
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

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-nez v5, :cond_1

    move-object v5, v4

    if-eqz v5, :cond_0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v6, v4

    const-string/jumbo v7, "ENTITY_SKIPPED"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    const-string/jumbo v6, "UnexpandedEntityReferenceIllegal"

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
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

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
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

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
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

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xinclude/XIncludeHandler;->addUnparsedEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
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

    const-string/jumbo v6, "1.1"

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fIsXML11:Z

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method
