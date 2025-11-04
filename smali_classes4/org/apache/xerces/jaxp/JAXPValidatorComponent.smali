.class final Lorg/apache/xerces/jaxp/JAXPValidatorComponent;
.super Lorg/apache/xerces/jaxp/TeeXMLDocumentFilterImpl;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/jaxp/JAXPValidatorComponent$DraconianErrorHandler;,
        Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;,
        Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;
    }
.end annotation


# static fields
.field private static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final noInfoProvider:Ljavax/xml/validation/TypeInfoProvider;


# instance fields
.field private fCurrentAttributes:Lorg/apache/xerces/xni/XMLAttributes;

.field private fCurrentAug:Lorg/apache/xerces/xni/Augmentations;

.field private fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

.field private fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field private fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field private final sax2xni:Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;

.field private final typeInfoProvider:Ljavax/xml/validation/TypeInfoProvider;

.field private final validator:Ljavax/xml/validation/ValidatorHandler;

.field private final xni2sax:Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$1;-><init>()V

    sput-object v0, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->noInfoProvider:Ljavax/xml/validation/TypeInfoProvider;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/validation/ValidatorHandler;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Lorg/apache/xerces/jaxp/TeeXMLDocumentFilterImpl;-><init>()V

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;-><init>(Lorg/apache/xerces/jaxp/JAXPValidatorComponent$1;)V

    iput-object v4, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;-><init>(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;Lorg/apache/xerces/jaxp/JAXPValidatorComponent$1;)V

    iput-object v4, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->sax2xni:Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Ljavax/xml/validation/ValidatorHandler;

    move-object v3, v1

    invoke-virtual {v3}, Ljavax/xml/validation/ValidatorHandler;->getTypeInfoProvider()Ljavax/xml/validation/TypeInfoProvider;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->noInfoProvider:Ljavax/xml/validation/TypeInfoProvider;

    move-object v2, v3

    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->typeInfoProvider:Ljavax/xml/validation/TypeInfoProvider;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Ljavax/xml/validation/ValidatorHandler;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Ljavax/xml/validation/ValidatorHandler;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->sax2xni:Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;

    invoke-virtual {v3, v4}, Ljavax/xml/validation/ValidatorHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->setSide(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Ljavax/xml/validation/ValidatorHandler;

    new-instance v4, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$2;-><init>(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;)V

    invoke-virtual {v3, v4}, Ljavax/xml/validation/ValidatorHandler;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->validator:Ljavax/xml/validation/ValidatorHandler;

    new-instance v4, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$3;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$3;-><init>(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;)V

    invoke-virtual {v3, v4}, Ljavax/xml/validation/ValidatorHandler;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method static access$200(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;)Lorg/apache/xerces/impl/XMLErrorReporter;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v0, v1

    return-object v0
.end method

.method static access$300(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;)Lorg/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object v0, v1

    return-object v0
.end method

.method static access$400(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;Lorg/xml/sax/Attributes;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->updateAttributes(Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method static access$500(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;)Lorg/apache/xerces/xni/XMLAttributes;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move-object v0, v1

    return-object v0
.end method

.method static access$600(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;)Lorg/apache/xerces/xni/Augmentations;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lorg/apache/xerces/xni/Augmentations;

    move-object v0, v1

    return-object v0
.end method

.method static access$602(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;
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

    iput-object v4, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lorg/apache/xerces/xni/Augmentations;

    move-object v0, v2

    return-object v0
.end method

.method static access$700(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private symbolize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private updateAttributes(Lorg/xml/sax/Attributes;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v1

    invoke-interface {v9}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v9

    move v2, v9

    const/4 v9, 0x0

    move v3, v9

    :goto_0
    move v9, v3

    move v10, v2

    if-lt v9, v10, :cond_0

    return-void

    :cond_0
    move-object v9, v1

    move v10, v3

    invoke-interface {v9, v10}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move-object v10, v4

    invoke-interface {v9, v10}, Lorg/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;)I

    move-result v9

    move v5, v9

    move-object v9, v1

    move v10, v3

    invoke-interface {v9, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    move v9, v5

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    move-object v9, v4

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    move v8, v9

    move v9, v8

    if-gez v9, :cond_2

    const/4 v9, 0x0

    move-object v7, v9

    :goto_1
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    new-instance v10, Lorg/apache/xerces/xni/QName;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v7

    move-object v13, v0

    move-object v14, v1

    move v15, v3

    invoke-interface {v14, v15}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v14, v0

    move-object v15, v4

    invoke-direct {v14, v15}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v15, v0

    move-object/from16 v16, v1

    move/from16 v17, v3

    invoke-interface/range {v16 .. v17}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v1

    move v12, v3

    invoke-interface {v11, v12}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v11

    move-object v12, v6

    invoke-interface {v9, v10, v11, v12}, Lorg/apache/xerces/xni/XMLAttributes;->addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move v5, v9

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v9, v0

    move-object v10, v4

    const/4 v11, 0x0

    move v12, v8

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    goto :goto_1

    :cond_3
    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v11, v5

    invoke-interface {v10, v11}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v10, v5

    move-object v11, v6

    invoke-interface {v9, v10, v11}, Lorg/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
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

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lorg/apache/xerces/xni/Augmentations;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

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

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
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

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lorg/apache/xerces/xni/Augmentations;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 6

    move-object v0, p0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v4, v2, v3

    move-object v0, v1

    return-object v0
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

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lorg/apache/xerces/xni/Augmentations;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/util/SymbolTable;

    iput-object v4, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object v4, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v3, v0

    move-object v4, v1

    :try_start_0
    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v4, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
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

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAug:Lorg/apache/xerces/xni/Augmentations;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->xni2sax:Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->fCurrentAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    return-void
.end method
