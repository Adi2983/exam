.class public Lorg/apache/xerces/parsers/IntegratedParserConfiguration;
.super Lorg/apache/xerces/parsers/StandardParserConfiguration;


# instance fields
.field protected fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

.field protected fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;


# direct methods
.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

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

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

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

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/parsers/StandardParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    return-void
.end method


# virtual methods
.method protected configurePipeline()V
    .locals 6

    move-object v0, p0

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->configureDTDPipeline()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v3, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_6

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/namespace-binder"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v3, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/document-scanner"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    if-eqz v2, :cond_4

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validator/dtd"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v3, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v3, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    if-nez v2, :cond_1

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validator/schema"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/apache/xerces/impl/xs/XSMessageFormatter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/xml-schema-1"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_2
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v3, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_5
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v3, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    goto/16 :goto_0

    :cond_6
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iput-object v3, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/document-scanner"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    if-eqz v2, :cond_8

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validator/dtd"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_7

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_7
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v3, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    goto/16 :goto_0

    :cond_8
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLDocumentScanner;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_9

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_9
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    iput-object v3, v2, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    goto/16 :goto_0
.end method

.method protected createDTDValidator()Lorg/apache/xerces/impl/dtd/XMLDTDValidator;
    .locals 4

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/impl/dtd/XMLNSDTDValidator;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/apache/xerces/impl/dtd/XMLNSDTDValidator;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method protected createDocumentScanner()Lorg/apache/xerces/xni/parser/XMLDocumentScanner;
    .locals 5

    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    move-object v0, v1

    return-object v0
.end method
