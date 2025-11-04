.class final Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/jaxp/validation/ValidatorHelper;
.implements Lorg/apache/xerces/impl/validation/EntityState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;,
        Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;,
        Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;
    }
.end annotation


# static fields
.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final STRING_INTERNING:Ljava/lang/String; = "javax.xml.stream.isInterning"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field final fAttributeQName:Lorg/apache/xerces/xni/QName;

.field final fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

.field private final fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fCurrentEvent:Ljavax/xml/stream/events/XMLEvent;

.field final fDeclaredPrefixes:Ljava/util/ArrayList;

.field private fDepth:I

.field final fElementQName:Lorg/apache/xerces/xni/QName;

.field private fEntities:Ljava/util/HashMap;

.field private final fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field private fEventHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;

.field private final fNamespaceContext:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

.field private final fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

.field private fStAXEventResultBuilder:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

.field private final fStAXLocationWrapper:Lorg/apache/xerces/util/StAXLocationWrapper;

.field private fStAXStreamResultBuilder:Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

.field private fStAXValidatorHandler:Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

.field private fStreamHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;

.field final fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

.field private fStringsInternalized:Z

.field private final fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field final fTempString:Lorg/apache/xerces/xni/XMLString;

.field private final fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

.field private final fXMLStreamReaderLocation:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/StAXLocationWrapper;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/apache/xerces/util/StAXLocationWrapper;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lorg/apache/xerces/util/StAXLocationWrapper;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fXMLStreamReaderLocation:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringsInternalized:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Ljavax/xml/stream/events/XMLEvent;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/QName;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/QName;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/XMLAttributesImpl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDeclaredPrefixes:Ljava/util/ArrayList;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/XMLString;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/util/SymbolTable;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/validation/ValidationManager;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setDeclaredPrefixes(Ljava/util/List;)V

    return-void
.end method

.method static access$000(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v0, v1

    return-object v0
.end method

.method static access$100(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fXMLStreamReaderLocation:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    move-object v0, v1

    return-object v0
.end method

.method static access$200(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/util/StAXLocationWrapper;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lorg/apache/xerces/util/StAXLocationWrapper;

    move-object v0, v1

    return-object v0
.end method

.method static access$300(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-object v0, v1

    return-object v0
.end method

.method static access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v0, v1

    return-object v0
.end method

.method static access$500(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I

    move v0, v1

    return v0
.end method

.method static access$504(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)I
    .locals 6

    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I

    move v0, v1

    return v0
.end method

.method static access$506(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)I
    .locals 6

    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I

    move v0, v1

    return v0
.end method

.method static access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-object v0, v1

    return-object v0
.end method

.method static access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Ljavax/xml/stream/events/XMLEvent;

    move-object v0, v1

    return-object v0
.end method

.method static access$702(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;Ljavax/xml/stream/events/XMLEvent;)Ljavax/xml/stream/events/XMLEvent;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Ljavax/xml/stream/events/XMLEvent;

    move-object v0, v2

    return-object v0
.end method

.method private setupStAXResultHandler(Ljavax/xml/transform/stax/StAXResult;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    :goto_0
    return-void

    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavax/xml/transform/stax/StAXResult;->getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXStreamResultBuilder:Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

    if-nez v3, :cond_1

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;-><init>(Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;)V

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXStreamResultBuilder:Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXStreamResultBuilder:Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXStreamResultBuilder:Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->setStAXResult(Ljavax/xml/transform/stax/StAXResult;)V

    :goto_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    goto :goto_0

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXEventResultBuilder:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    if-nez v3, :cond_3

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fNamespaceContext:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;-><init>(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;)V

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXEventResultBuilder:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    :cond_3
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXEventResultBuilder:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXEventResultBuilder:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->setStAXResult(Ljavax/xml/transform/stax/StAXResult;)V

    goto :goto_1
.end method


# virtual methods
.method final fillQName(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringsInternalized:Z

    if-nez v6, :cond_5

    move-object v6, v2

    if-eqz v6, :cond_2

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v2, v6

    move-object v6, v3

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object v3, v6

    move-object v6, v4

    if-eqz v6, :cond_4

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    move-object v4, v6

    :cond_0
    :goto_3
    move-object v6, v3

    move-object v5, v6

    move-object v6, v4

    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v6, v7, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v6}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v7, v7, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v8, v8, Lorg/apache/xerces/util/XMLStringBuffer;->offset:I

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringBuffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v9, v9, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    :cond_1
    move-object v6, v1

    move-object v7, v4

    move-object v8, v3

    move-object v9, v5

    move-object v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    :cond_4
    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v6, v2

    if-eqz v6, :cond_6

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x0

    move-object v2, v6

    :cond_6
    move-object v6, v3

    if-nez v6, :cond_7

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v3, v6

    :cond_7
    move-object v6, v4

    if-nez v6, :cond_0

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v4, v6

    goto :goto_3
.end method

.method final getCurrentEvent()Ljavax/xml/stream/events/XMLEvent;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Ljavax/xml/stream/events/XMLEvent;

    move-object v0, v1

    return-object v0
.end method

.method final getEntityDeclaration(Ljava/lang/String;)Ljavax/xml/stream/events/EntityDeclaration;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/stream/events/EntityDeclaration;

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/stream/events/EntityDeclaration;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-interface {v3}, Ljavax/xml/stream/events/EntityDeclaration;->getNotationName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

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

    move v0, v3

    goto :goto_1
.end method

.method final processEntityDeclarations(Ljava/util/List;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    if-eqz v5, :cond_2

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    move v2, v5

    move v5, v2

    if-lez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    if-nez v5, :cond_0

    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    :cond_0
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-lt v5, v6, :cond_3

    :cond_1
    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/xml/stream/events/EntityDeclaration;

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    move-object v6, v4

    invoke-interface {v6}, Ljavax/xml/stream/events/EntityDeclaration;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method final setup(Ljavax/xml/stream/Location;Ljavax/xml/transform/stax/StAXResult;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDepth:I

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->reset()V

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->setupStAXResultHandler(Ljavax/xml/transform/stax/StAXResult;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lorg/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lorg/apache/xerces/impl/validation/EntityState;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEntities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lorg/apache/xerces/util/StAXLocationWrapper;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lorg/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStringsInternalized:Z

    return-void
.end method

.method public validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v10, v2

    instance-of v10, v10, Ljavax/xml/transform/stax/StAXResult;

    if-nez v10, :cond_0

    move-object v10, v2

    if-nez v10, :cond_6

    :cond_0
    move-object v10, v1

    check-cast v10, Ljavax/xml/transform/stax/StAXSource;

    move-object v3, v10

    move-object v10, v2

    check-cast v10, Ljavax/xml/transform/stax/StAXResult;

    move-object v4, v10

    move-object v10, v3

    :try_start_0
    invoke-virtual {v10}, Ljavax/xml/transform/stax/StAXSource;->getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v10

    move-object v5, v10

    move-object v10, v5

    if-eqz v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStreamHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;

    if-nez v10, :cond_1

    move-object v10, v0

    new-instance v11, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v0

    invoke-direct {v12, v13}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;-><init>(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)V

    iput-object v11, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStreamHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;

    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStreamHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;

    move-object v11, v5

    move-object v12, v4

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->validate(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/transform/stax/StAXResult;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Ljavax/xml/stream/events/XMLEvent;

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lorg/apache/xerces/util/StAXLocationWrapper;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fXMLStreamReaderLocation:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->setXMLStreamReader(Ljavax/xml/stream/XMLStreamReader;)V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    if-eqz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->setStAXResult(Ljavax/xml/transform/stax/StAXResult;)V

    :cond_2
    return-void

    :cond_3
    move-object v10, v0

    :try_start_1
    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEventHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;

    if-nez v10, :cond_4

    move-object v10, v0

    new-instance v11, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v0

    invoke-direct {v12, v13}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;-><init>(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)V

    iput-object v11, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEventHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;

    :cond_4
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fEventHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;

    move-object v11, v3

    invoke-virtual {v11}, Ljavax/xml/transform/stax/StAXSource;->getXMLEventReader()Ljavax/xml/stream/XMLEventReader;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->validate(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/transform/stax/StAXResult;)V
    :try_end_1
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v10

    move-object v5, v10

    :try_start_2
    new-instance v10, Lorg/xml/sax/SAXException;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v5

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v10

    move-object v8, v10

    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fCurrentEvent:Ljavax/xml/stream/events/XMLEvent;

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXLocationWrapper:Lorg/apache/xerces/util/StAXLocationWrapper;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fXMLStreamReaderLocation:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->setXMLStreamReader(Ljavax/xml/stream/XMLStreamReader;)V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    if-eqz v10, :cond_5

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fStAXValidatorHandler:Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->setStAXResult(Ljavax/xml/transform/stax/StAXResult;)V

    :cond_5
    move-object v10, v8

    throw v10

    :catch_1
    move-exception v10

    move-object v6, v10

    move-object v10, v6

    :try_start_3
    invoke-static {v10}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v10

    throw v10

    :catch_2
    move-exception v10

    move-object v7, v10

    move-object v10, v7

    invoke-static {v10}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXException(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v10

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v12}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v12

    const-string/jumbo v13, "SourceResultMismatch"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x1

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method
