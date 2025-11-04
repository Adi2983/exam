.class public Lorg/apache/xerces/parsers/DOMParserImpl;
.super Lorg/apache/xerces/parsers/AbstractDOMParser;

# interfaces
.implements Lorg/w3c/dom/ls/LSParser;
.implements Lorg/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/parsers/DOMParserImpl$1;,
        Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;,
        Lorg/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final PSVI_AUGMENT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final XMLSCHEMA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final XMLSCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"


# instance fields
.field private abortHandler:Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;

.field private abortNow:Z

.field private currentThread:Ljava/lang/Thread;

.field protected fBusy:Z

.field protected fNamespaceDeclarations:Z

.field private fNullFilterInUse:Z

.field private fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

.field private fSchemaLocation:Ljava/lang/String;

.field protected fSchemaType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "org.apache.xerces.xni.parser.XMLParserConfiguration"

    move-object v5, v1

    invoke-static {v4, v5}, Lorg/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {v3, v4}, Lorg/apache/xerces/parsers/DOMParserImpl;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    sget-object v4, Lorg/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    sget-object v5, Lorg/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v3, v0

    sget-object v4, Lorg/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    iput-object v4, v3, Lorg/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v2

    sget-object v4, Lorg/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    sget-object v5, Lorg/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "org.apache.xerces.xni.parser.XMLParserConfiguration"

    const-string/jumbo v4, "org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v3, v4}, Lorg/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {v2, v3}, Lorg/apache/xerces/parsers/DOMParserImpl;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/symbol-table"

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "org.apache.xerces.xni.parser.XMLParserConfiguration"

    const-string/jumbo v5, "org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v4, v5}, Lorg/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {v3, v4}, Lorg/apache/xerces/parsers/DOMParserImpl;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/symbol-table"

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/grammar-pool"

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/parsers/AbstractDOMParser;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string/jumbo v7, "canonical-form"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    const-string/jumbo v7, "cdata-sections"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    const-string/jumbo v7, "charset-overrides-xml-encoding"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x3

    const-string/jumbo v7, "infoset"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x4

    const-string/jumbo v7, "namespace-declarations"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x5

    const-string/jumbo v7, "split-cdata-sections"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x6

    const-string/jumbo v7, "supported-media-types-only"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x7

    const-string/jumbo v7, "certified"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0x8

    const-string/jumbo v7, "well-formed"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0x9

    const-string/jumbo v7, "ignore-unknown-character-denormalizations"

    aput-object v7, v5, v6

    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v5, v2

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/dom/defer-node-expansion"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "namespace-declarations"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "well-formed"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/include-comments"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://xml.org/sax/features/namespaces"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/validation/dynamic"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/create-cdata-nodes"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "canonical-form"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "charset-overrides-xml-encoding"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "split-cdata-sections"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "supported-media-types-only"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "ignore-unknown-character-denormalizations"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "certified"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema/normalized-value"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0
.end method

.method private static newFeatureNotFoundError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;
    .locals 9

    move-object v0, p0

    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v3, "FEATURE_NOT_FOUND"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/16 v4, 0x8

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method private static newFeatureNotSupportedError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;
    .locals 9

    move-object v0, p0

    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v3, "FEATURE_NOT_SUPPORTED"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/16 v4, 0x9

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method private static newInvalidStateError()Lorg/w3c/dom/DOMException;
    .locals 6

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "INVALID_STATE_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    new-instance v1, Lorg/w3c/dom/DOMException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0xb

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method private static newTypeMismatchError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;
    .locals 9

    move-object v0, p0

    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v3, "TYPE_MISMATCH_ERR"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/16 v4, 0x11

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method private restoreHandlers()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v2, v0

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v2, v0

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v2, v0

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-eqz v1, :cond_2

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;-><init>(Lorg/apache/xerces/parsers/DOMParserImpl$1;)V

    iput-object v2, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lorg/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v1

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    return-void
.end method

.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x1

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move-object v5, v2

    instance-of v5, v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_c

    move-object v5, v2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v3, v5

    move-object v5, v1

    const-string/jumbo v6, "supported-media-types-only"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v1

    const-string/jumbo v6, "normalize-characters"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v1

    const-string/jumbo v6, "check-character-normalization"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v1

    const-string/jumbo v6, "canonical-form"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    move v5, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    move-object v5, v1

    const-string/jumbo v6, "well-formed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object v5, v1

    const-string/jumbo v6, "ignore-unknown-character-denormalizations"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    move v5, v3

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    move-object v5, v1

    const-string/jumbo v6, "cdata-sections"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v1

    const-string/jumbo v6, "charset-overrides-xml-encoding"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v1

    const-string/jumbo v6, "comments"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v1

    const-string/jumbo v6, "datatype-normalization"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v1

    const-string/jumbo v6, "disallow-doctype"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v1

    const-string/jumbo v6, "entities"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v1

    const-string/jumbo v6, "infoset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v1

    const-string/jumbo v6, "namespaces"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v1

    const-string/jumbo v6, "namespace-declarations"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v1

    const-string/jumbo v6, "validate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v1

    const-string/jumbo v6, "validate-if-schema"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v1

    const-string/jumbo v6, "element-content-whitespace"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v1

    const-string/jumbo v6, "xml-declaration"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0

    :cond_8
    move-object v5, v1

    :try_start_0
    const-string/jumbo v6, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "http://apache.org/xml/features/honour-all-schemaLocations"

    move-object v4, v5

    :goto_3
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v6, v4

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v5

    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0

    :cond_9
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "http://apache.org/xml/features/namespace-growth"

    move-object v4, v5

    goto :goto_3

    :cond_a
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string/jumbo v5, "http://apache.org/xml/features/internal/tolerate-duplicates"

    move-object v4, v5

    goto :goto_3

    :cond_b
    move-object v5, v1

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v4, v5

    goto :goto_3

    :catch_0
    move-exception v5

    move-object v4, v5

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    :cond_c
    move-object v5, v1

    const-string/jumbo v6, "error-handler"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object v5, v2

    instance-of v5, v5, Lorg/w3c/dom/DOMErrorHandler;

    if-nez v5, :cond_d

    move-object v5, v2

    if-nez v5, :cond_e

    :cond_d
    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0

    :cond_e
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    :cond_f
    move-object v5, v1

    const-string/jumbo v6, "resource-resolver"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object v5, v2

    instance-of v5, v5, Lorg/w3c/dom/ls/LSResourceResolver;

    if-nez v5, :cond_10

    move-object v5, v2

    if-nez v5, :cond_11

    :cond_10
    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0

    :cond_11
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    :cond_12
    move-object v5, v1

    const-string/jumbo v6, "schema-type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    move-object v5, v2

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_13

    move-object v5, v2

    sget-object v6, Lorg/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    move-object v5, v2

    sget-object v6, Lorg/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    :cond_13
    move-object v5, v2

    if-nez v5, :cond_15

    :cond_14
    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0

    :cond_15
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    :cond_16
    move-object v5, v1

    const-string/jumbo v6, "schema-location"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    move-object v5, v2

    instance-of v5, v5, Ljava/lang/String;

    if-nez v5, :cond_17

    move-object v5, v2

    if-nez v5, :cond_18

    :cond_17
    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0

    :cond_18
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    :cond_19
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0

    :cond_1a
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v6, v1

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0

    :catch_1
    move-exception v5

    move-object v3, v5

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0
.end method

.method dom2xmlInputSource(Lorg/w3c/dom/ls/LSInput;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move-object v2, v4

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v4, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v7}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    invoke-interface {v9}, Lorg/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v9

    const-string/jumbo v10, "UTF-16"

    invoke-direct/range {v5 .. v10}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    move-object v2, v4

    :goto_0
    move-object v4, v2

    move-object v0, v4

    return-object v0

    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v7}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    invoke-interface {v9}, Lorg/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v9

    move-object v10, v1

    invoke-interface {v10}, Lorg/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v7}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/StringReader;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v1

    invoke-interface {v11}, Lorg/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "UTF-16"

    invoke-direct/range {v5 .. v10}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    :cond_2
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_4

    :cond_3
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    :cond_4
    new-instance v4, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v7}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    goto/16 :goto_0

    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v4, :cond_6

    new-instance v4, Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    move-object v3, v4

    move-object v4, v3

    const-string/jumbo v5, "no-input-specified"

    iput-object v5, v4, Lorg/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    move-object v4, v3

    const-string/jumbo v5, "no-input-specified"

    iput-object v5, v4, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    move-object v4, v3

    const/4 v5, 0x3

    iput-short v5, v4, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v4}, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v4

    :cond_6
    new-instance v4, Lorg/w3c/dom/ls/LSException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const/16 v6, 0x51

    const-string/jumbo v7, "no-input-specified"

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v4
.end method

.method public getAsync()Z
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getBusy()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    move v0, v1

    return v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public getFilter()Lorg/w3c/dom/ls/LSParserFilter;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const-string/jumbo v5, "comments"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/include-comments"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    move-object v0, v4

    :goto_1
    return-object v0

    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    move-object v4, v1

    const-string/jumbo v5, "datatype-normalization"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    move-object v0, v4

    goto :goto_1

    :cond_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    move-object v4, v1

    const-string/jumbo v5, "entities"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    move-object v0, v4

    goto :goto_1

    :cond_4
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_5
    move-object v4, v1

    const-string/jumbo v5, "namespaces"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://xml.org/sax/features/namespaces"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    move-object v0, v4

    goto :goto_1

    :cond_6
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_7
    move-object v4, v1

    const-string/jumbo v5, "validate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://xml.org/sax/features/validation"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5
    move-object v0, v4

    goto :goto_1

    :cond_8
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_9
    move-object v4, v1

    const-string/jumbo v5, "validate-if-schema"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_6
    move-object v0, v4

    goto/16 :goto_1

    :cond_a
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_b
    move-object v4, v1

    const-string/jumbo v5, "element-content-whitespace"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_7
    move-object v0, v4

    goto/16 :goto_1

    :cond_c
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_d
    move-object v4, v1

    const-string/jumbo v5, "disallow-doctype"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_8
    move-object v0, v4

    goto/16 :goto_1

    :cond_e
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_f
    move-object v4, v1

    const-string/jumbo v5, "infoset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://xml.org/sax/features/namespaces"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "namespace-declarations"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/include-comments"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v4, 0x1

    :goto_9
    move v2, v4

    move v4, v2

    if-eqz v4, :cond_11

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_a
    move-object v0, v4

    goto/16 :goto_1

    :cond_10
    const/4 v4, 0x0

    goto :goto_9

    :cond_11
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_12
    move-object v4, v1

    const-string/jumbo v5, "cdata-sections"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_b
    move-object v0, v4

    goto/16 :goto_1

    :cond_13
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_14
    move-object v4, v1

    const-string/jumbo v5, "check-character-normalization"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    move-object v4, v1

    const-string/jumbo v5, "normalize-characters"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v4

    goto/16 :goto_1

    :cond_16
    move-object v4, v1

    const-string/jumbo v5, "namespace-declarations"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    move-object v4, v1

    const-string/jumbo v5, "well-formed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    move-object v4, v1

    const-string/jumbo v5, "ignore-unknown-character-denormalizations"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    move-object v4, v1

    const-string/jumbo v5, "canonical-form"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    move-object v4, v1

    const-string/jumbo v5, "supported-media-types-only"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    move-object v4, v1

    const-string/jumbo v5, "split-cdata-sections"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    move-object v4, v1

    const-string/jumbo v5, "charset-overrides-xml-encoding"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    :cond_17
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v5, v1

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_c
    move-object v0, v4

    goto/16 :goto_1

    :cond_18
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_19
    move-object v4, v1

    const-string/jumbo v5, "error-handler"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v4, :cond_1a

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v4}, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    :cond_1a
    const/4 v4, 0x0

    move-object v0, v4

    goto/16 :goto_1

    :cond_1b
    move-object v4, v1

    const-string/jumbo v5, "resource-resolver"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_1c

    move-object v4, v2

    instance-of v4, v4, Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    if-eqz v4, :cond_1c

    move-object v4, v2

    check-cast v4, Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v4}, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->getEntityResolver()Lorg/w3c/dom/ls/LSResourceResolver;
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    :cond_1c
    :goto_d
    const/4 v4, 0x0

    move-object v0, v4

    goto/16 :goto_1

    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_d

    :cond_1d
    move-object v4, v1

    const-string/jumbo v5, "schema-type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    :cond_1e
    move-object v4, v1

    const-string/jumbo v5, "schema-location"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    move-object v0, v4

    goto/16 :goto_1

    :cond_1f
    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    :cond_20
    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    :cond_21
    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string/jumbo v4, "http://apache.org/xml/features/honour-all-schemaLocations"

    move-object v2, v4

    :goto_e
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v5, v2

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_f
    move-object v0, v4

    goto/16 :goto_1

    :cond_22
    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const-string/jumbo v4, "http://apache.org/xml/features/namespace-growth"

    move-object v2, v4

    goto :goto_e

    :cond_23
    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string/jumbo v4, "http://apache.org/xml/features/internal/tolerate-duplicates"

    move-object v2, v4

    goto :goto_e

    :cond_24
    move-object v4, v1

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_e

    :cond_25
    :try_start_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_f

    :catch_1
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    :try_start_3
    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v5, v2

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    :catch_2
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    invoke-static {v4}, Lorg/apache/xerces/parsers/DOMParserImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v4

    throw v4
.end method

.method public getParameterNames()Lorg/w3c/dom/DOMStringList;
    .locals 7

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DOMParserImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    move-object v2, v1

    const-string/jumbo v3, "namespaces"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "cdata-sections"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "canonical-form"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "namespace-declarations"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "split-cdata-sections"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "entities"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "validate-if-schema"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "validate"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "datatype-normalization"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "charset-overrides-xml-encoding"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "check-character-normalization"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "supported-media-types-only"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "ignore-unknown-character-denormalizations"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "normalize-characters"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "well-formed"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "infoset"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "disallow-doctype"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "element-content-whitespace"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "comments"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "error-handler"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "resource-resolver"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "schema-location"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "schema-type"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/dom/DOMStringListImpl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v3, v2, Lorg/apache/xerces/parsers/DOMParserImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DOMParserImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    move-object v0, v2

    return-object v0
.end method

.method public parse(Lorg/w3c/dom/ls/LSInput;)Lorg/w3c/dom/Document;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/DOMParserImpl;->dom2xmlInputSource(Lorg/w3c/dom/ls/LSInput;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v5

    move-object v2, v5

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lorg/apache/xerces/parsers/DOMParserImpl;->newInvalidStateError()Lorg/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    :cond_0
    move-object v5, v0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/DOMParserImpl;->parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/parsers/DOMParserImpl;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    move-object v3, v5

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/parsers/DOMParserImpl;->dropDocumentReferences()V

    move-object v5, v3

    move-object v0, v5

    :goto_0
    return-object v0

    :catch_0
    move-exception v5

    move-object v3, v5

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    :cond_2
    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    move-object v5, v0

    invoke-direct {v5}, Lorg/apache/xerces/parsers/DOMParserImpl;->restoreHandlers()V

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :cond_3
    move-object v5, v3

    sget-object v6, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    if-eq v5, v6, :cond_1

    move-object v5, v3

    instance-of v5, v5, Lorg/apache/xerces/xni/parser/XMLParseException;

    if-nez v5, :cond_4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v5, :cond_4

    new-instance v5, Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    move-object v4, v5

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    move-object v5, v4

    const/4 v6, 0x3

    iput-short v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v5}, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v5

    :cond_4
    const/16 v5, 0x51

    move-object v6, v3

    invoke-static {v5, v6}, Lorg/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object v5

    invoke-virtual {v5}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/ls/LSException;

    throw v5
.end method

.method public parseURI(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lorg/apache/xerces/parsers/DOMParserImpl;->newInvalidStateError()Lorg/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    :cond_0
    new-instance v5, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v1

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    move-object v5, v0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/DOMParserImpl;->parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/parsers/DOMParserImpl;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    move-object v3, v5

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/parsers/DOMParserImpl;->dropDocumentReferences()V

    move-object v5, v3

    move-object v0, v5

    :goto_0
    return-object v0

    :catch_0
    move-exception v5

    move-object v3, v5

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    :cond_2
    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    move-object v5, v0

    invoke-direct {v5}, Lorg/apache/xerces/parsers/DOMParserImpl;->restoreHandlers()V

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :cond_3
    move-object v5, v3

    sget-object v6, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    if-eq v5, v6, :cond_1

    move-object v5, v3

    instance-of v5, v5, Lorg/apache/xerces/xni/parser/XMLParseException;

    if-nez v5, :cond_4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v5, :cond_4

    new-instance v5, Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    move-object v4, v5

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    move-object v5, v4

    const/4 v6, 0x3

    iput-short v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v5}, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v5

    :cond_4
    const/16 v5, 0x51

    move-object v6, v3

    invoke-static {v5, v6}, Lorg/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object v5

    invoke-virtual {v5}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/ls/LSException;

    throw v5
.end method

.method public parseWithContext(Lorg/w3c/dom/ls/LSInput;Lorg/w3c/dom/Node;S)Lorg/w3c/dom/Node;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0x9

    const-string/jumbo v7, "Not supported"

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4
.end method

.method public reset()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lorg/apache/xerces/parsers/AbstractDOMParser;->reset()V

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "namespace-declarations"

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->removeAllElements()V

    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fRejectedElementDepth:I

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fFilterReject:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    return-void
.end method

.method public setFilter(Lorg/w3c/dom/ls/LSParserFilter;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-eqz v2, :cond_1

    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    if-eqz v2, :cond_1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    move-object v2, v0

    sget-object v3, Lorg/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;->INSTANCE:Lorg/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;

    iput-object v3, v2, Lorg/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    if-nez v2, :cond_0

    move-object v2, v0

    new-instance v3, Ljava/util/Stack;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    instance-of v5, v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_15

    move-object v5, v2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v3, v5

    move-object v5, v1

    :try_start_0
    const-string/jumbo v6, "comments"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/include-comments"

    move v7, v3

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v5, v1

    const-string/jumbo v6, "datatype-normalization"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema/normalized-value"

    move v7, v3

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move-object v5, v1

    const-string/jumbo v6, "entities"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    move v7, v3

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move-object v5, v1

    const-string/jumbo v6, "disallow-doctype"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/disallow-doctype-decl"

    move v7, v3

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    move-object v5, v1

    const-string/jumbo v6, "supported-media-types-only"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object v5, v1

    const-string/jumbo v6, "normalize-characters"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object v5, v1

    const-string/jumbo v6, "check-character-normalization"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object v5, v1

    const-string/jumbo v6, "canonical-form"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-static {v5}, Lorg/apache/xerces/parsers/DOMParserImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v5

    throw v5
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    invoke-static {v5}, Lorg/apache/xerces/parsers/DOMParserImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    :cond_6
    move-object v5, v1

    :try_start_1
    const-string/jumbo v6, "namespaces"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://xml.org/sax/features/namespaces"

    move v7, v3

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    move-object v5, v1

    const-string/jumbo v6, "infoset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://xml.org/sax/features/namespaces"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "namespace-declarations"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/include-comments"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/validation/dynamic"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema/normalized-value"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/create-cdata-nodes"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_8
    move-object v5, v1

    const-string/jumbo v6, "cdata-sections"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/create-cdata-nodes"

    move v7, v3

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    move-object v5, v1

    const-string/jumbo v6, "namespace-declarations"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "namespace-declarations"

    move v7, v3

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    move-object v5, v1

    const-string/jumbo v6, "well-formed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    move-object v5, v1

    const-string/jumbo v6, "ignore-unknown-character-denormalizations"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    move v5, v3

    if-nez v5, :cond_0

    move-object v5, v1

    invoke-static {v5}, Lorg/apache/xerces/parsers/DOMParserImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    :cond_c
    move-object v5, v1

    const-string/jumbo v6, "validate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://xml.org/sax/features/validation"

    move v7, v3

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    sget-object v6, Lorg/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    if-eq v5, v6, :cond_d

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema"

    move v7, v3

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema-full-checking"

    move v7, v3

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    :cond_d
    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/validation/dynamic"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_e
    move-object v5, v1

    const-string/jumbo v6, "validate-if-schema"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/validation/dynamic"

    move v7, v3

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://xml.org/sax/features/validation"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_f
    move-object v5, v1

    const-string/jumbo v6, "element-content-whitespace"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    move v7, v3

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_10
    move-object v5, v1

    const-string/jumbo v6, "psvi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema/augment-psvi"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/properties/dom/document-class-name"

    const-string/jumbo v7, "org.apache.xerces.dom.PSVIDocumentImpl"

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string/jumbo v5, "http://apache.org/xml/features/honour-all-schemaLocations"

    move-object v4, v5

    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v6, v4

    move v7, v3

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_12
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string/jumbo v5, "http://apache.org/xml/features/namespace-growth"

    move-object v4, v5

    goto :goto_1

    :cond_13
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string/jumbo v5, "http://apache.org/xml/features/internal/tolerate-duplicates"

    move-object v4, v5

    goto :goto_1

    :cond_14
    move-object v5, v1

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    :cond_15
    move-object v5, v1

    const-string/jumbo v6, "error-handler"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object v5, v2

    instance-of v5, v5, Lorg/w3c/dom/DOMErrorHandler;

    if-nez v5, :cond_16

    move-object v5, v2

    if-nez v5, :cond_17

    :cond_16
    move-object v5, v0

    :try_start_2
    new-instance v6, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    check-cast v8, Lorg/w3c/dom/DOMErrorHandler;

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;-><init>(Lorg/w3c/dom/DOMErrorHandler;)V

    iput-object v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/properties/internal/error-handler"

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v5

    move-object v3, v5

    goto/16 :goto_0

    :cond_17
    move-object v5, v1

    invoke-static {v5}, Lorg/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    :cond_18
    move-object v5, v1

    const-string/jumbo v6, "resource-resolver"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object v5, v2

    instance-of v5, v5, Lorg/w3c/dom/ls/LSResourceResolver;

    if-nez v5, :cond_19

    move-object v5, v2

    if-nez v5, :cond_1a

    :cond_19
    move-object v5, v0

    :try_start_3
    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/properties/internal/entity-resolver"

    new-instance v7, Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    check-cast v9, Lorg/w3c/dom/ls/LSResourceResolver;

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lorg/w3c/dom/ls/LSResourceResolver;)V

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v5

    move-object v3, v5

    goto/16 :goto_0

    :cond_1a
    move-object v5, v1

    invoke-static {v5}, Lorg/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    :cond_1b
    move-object v5, v1

    const-string/jumbo v6, "schema-location"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    move-object v5, v2

    instance-of v5, v5, Ljava/lang/String;

    if-nez v5, :cond_1c

    move-object v5, v2

    if-nez v5, :cond_20

    :cond_1c
    move-object v5, v2

    if-nez v5, :cond_1d

    move-object v5, v0

    const/4 v6, 0x0

    :try_start_4
    iput-object v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    goto/16 :goto_0

    :cond_1d
    move-object v5, v0

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    new-instance v5, Ljava/util/StringTokenizer;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    const-string/jumbo v8, " \n\t\r"

    invoke-direct {v6, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1f

    new-instance v5, Ljava/util/ArrayList;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    :goto_3
    move-object v5, v3

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_1e

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1e
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_3

    :cond_1f
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v5

    move-object v3, v5

    goto/16 :goto_0

    :cond_20
    move-object v5, v1

    invoke-static {v5}, Lorg/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    :cond_21
    move-object v5, v1

    const-string/jumbo v6, "schema-type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    move-object v5, v2

    instance-of v5, v5, Ljava/lang/String;

    if-nez v5, :cond_22

    move-object v5, v2

    if-nez v5, :cond_26

    :cond_22
    move-object v5, v2

    if-nez v5, :cond_24

    move-object v5, v0

    :try_start_5
    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    :cond_23
    :goto_4
    goto/16 :goto_0

    :cond_24
    move-object v5, v2

    sget-object v6, Lorg/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    sget-object v7, Lorg/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v5, v0

    sget-object v6, Lorg/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    iput-object v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    goto :goto_4

    :cond_25
    move-object v5, v2

    sget-object v6, Lorg/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    sget-object v7, Lorg/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v5, v0

    sget-object v6, Lorg/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    iput-object v6, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;
    :try_end_5
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    move-object v3, v5

    goto/16 :goto_0

    :cond_26
    move-object v5, v1

    invoke-static {v5}, Lorg/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    :cond_27
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v6, "http://apache.org/xml/properties/dom/document-class-name"

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_28
    move-object v5, v1

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v0

    :try_start_6
    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v6, v3

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    :try_start_7
    const-string/jumbo v6, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const-string/jumbo v5, "http://apache.org/xml/features/honour-all-schemaLocations"

    move-object v3, v5

    :cond_29
    :goto_5
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v6, v3

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v5

    move-object v5, v1

    invoke-static {v5}, Lorg/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v5

    throw v5
    :try_end_7
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    invoke-static {v5}, Lorg/apache/xerces/parsers/DOMParserImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    :cond_2a
    move-object v5, v1

    :try_start_8
    const-string/jumbo v6, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    const-string/jumbo v5, "http://apache.org/xml/features/namespace-growth"

    move-object v3, v5

    goto :goto_5

    :cond_2b
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    const-string/jumbo v5, "http://apache.org/xml/features/internal/tolerate-duplicates"
    :try_end_8
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_6

    move-object v3, v5

    goto :goto_5
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    if-nez v6, :cond_0

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/DOMParserImpl;->fNamespaceAware:Z

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v6

    move v4, v6

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v5, v6

    :goto_0
    move v6, v5

    if-gez v6, :cond_1

    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-super {v6, v7, v8, v9}, Lorg/apache/xerces/parsers/AbstractDOMParser;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    return-void

    :cond_1
    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object v7, v2

    move v8, v5

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v7

    if-eq v6, v7, :cond_2

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object v7, v2

    move v8, v5

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v7

    if-ne v6, v7, :cond_3

    :cond_2
    move-object v6, v2

    move v7, v5

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/XMLAttributes;->removeAttributeAt(I)V

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0
.end method
