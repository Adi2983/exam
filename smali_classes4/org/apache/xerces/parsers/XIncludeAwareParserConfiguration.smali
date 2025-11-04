.class public Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;
.super Lorg/apache/xerces/parsers/XML11Configuration;


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field protected static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"

.field protected static final XINCLUDE_FIXUP_BASE_URIS:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-base-uris"

.field protected static final XINCLUDE_FIXUP_LANGUAGE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-language"

.field protected static final XINCLUDE_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/xinclude-handler"


# instance fields
.field protected fCurrentNSContext:Lorg/apache/xerces/xni/NamespaceContext;

.field protected fNonXIncludeNSContext:Lorg/apache/xerces/util/NamespaceSupport;

.field protected fXIncludeEnabled:Z

.field protected fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

.field protected fXIncludeNSContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;


# direct methods
.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/parsers/XML11Configuration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    const-string/jumbo v9, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    const-string/jumbo v9, "http://apache.org/xml/features/xinclude/fixup-language"

    aput-object v9, v7, v8

    move-object v4, v6

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "http://apache.org/xml/properties/internal/xinclude-handler"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    const-string/jumbo v9, "http://apache.org/xml/properties/internal/namespace-context"

    aput-object v9, v7, v8

    move-object v5, v6

    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    move-object v6, v0

    const-string/jumbo v7, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/features/xinclude/fixup-language"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v6, v0

    new-instance v7, Lorg/apache/xerces/util/NamespaceSupport;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v7, v6, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lorg/apache/xerces/util/NamespaceSupport;

    iput-object v7, v6, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/namespace-context"

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected configurePipeline()V
    .locals 7

    move-object v0, p0

    move-object v3, v0

    invoke-super {v3}, Lorg/apache/xerces/parsers/XML11Configuration;->configurePipeline()V

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    if-nez v3, :cond_0

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v3, v0

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/xinclude-handler"

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-eq v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-nez v3, :cond_1

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v4, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v3, v0

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/namespace-context"

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_3
    const/4 v3, 0x0

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v3

    move-object v2, v3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v3, v2

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-object v1, v3

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    iput-object v4, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0

    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lorg/apache/xerces/util/NamespaceSupport;

    if-eq v3, v4, :cond_4

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lorg/apache/xerces/util/NamespaceSupport;

    iput-object v4, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v3, v0

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/namespace-context"

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected configureXML11Pipeline()V
    .locals 7

    move-object v0, p0

    move-object v3, v0

    invoke-super {v3}, Lorg/apache/xerces/parsers/XML11Configuration;->configureXML11Pipeline()V

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    if-nez v3, :cond_0

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/xinclude/XIncludeHandler;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v3, v0

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/xinclude-handler"

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-eq v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-nez v3, :cond_1

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v4, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v3, v0

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/namespace-context"

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeNSContext:Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/XML11DTDScannerImpl;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_3
    const/4 v3, 0x0

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v3

    move-object v2, v3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v3, v2

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-object v1, v3

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    iput-object v4, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0

    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lorg/apache/xerces/util/NamespaceSupport;

    if-eq v3, v4, :cond_4

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lorg/apache/xerces/util/NamespaceSupport;

    iput-object v4, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fCurrentNSContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v3, v0

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/namespace-context"

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fNonXIncludeNSContext:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fConfigUpdated:Z

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/parsers/XML11Configuration;->getFeature0(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    goto :goto_0
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

    const-string/jumbo v4, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fXIncludeEnabled:Z

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->fConfigUpdated:Z

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/parsers/XML11Configuration;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0
.end method
