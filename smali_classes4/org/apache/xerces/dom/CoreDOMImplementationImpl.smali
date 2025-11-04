.class public Lorg/apache/xerces/dom/CoreDOMImplementationImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/DOMImplementation;
.implements Lorg/w3c/dom/ls/DOMImplementationLS;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;,
        Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x2

.field static final singleton:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;


# instance fields
.field private docAndDoctypeCounter:I

.field private freeSchemaValidatorIndex:I

.field private freeXML10DTDLoaderIndex:I

.field private freeXML10DTDValidatorIndex:I

.field private freeXML11DTDLoaderIndex:I

.field private freeXML11DTDValidatorIndex:I

.field private schemaValidators:[Ljava/lang/ref/SoftReference;

.field private schemaValidatorsCurrentSize:I

.field private xml10DTDLoaderCurrentSize:I

.field private xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

.field private xml10DTDValidators:[Ljava/lang/ref/SoftReference;

.field private xml10DTDValidatorsCurrentSize:I

.field private xml11DTDLoaderCurrentSize:I

.field private xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

.field private xml11DTDValidators:[Ljava/lang/ref/SoftReference;

.field private xml11DTDValidatorsCurrentSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;-><init>()V

    sput-object v0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/ref/SoftReference;

    iput-object v2, v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/ref/SoftReference;

    iput-object v2, v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/ref/SoftReference;

    iput-object v2, v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidatorsCurrentSize:I

    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidatorsCurrentSize:I

    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidatorsCurrentSize:I

    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/ref/SoftReference;

    iput-object v2, v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/ref/SoftReference;

    iput-object v2, v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaderCurrentSize:I

    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaderCurrentSize:I

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I

    return-void
.end method

.method public static getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized assignDocTypeNumber()I
    .locals 7

    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    :try_start_0
    iget v2, v2, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    iput v3, v2, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    monitor-exit v4

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method protected declared-synchronized assignDocumentNumber()I
    .locals 7

    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    :try_start_0
    iget v2, v2, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    iput v3, v2, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    monitor-exit v4

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method final checkQName(Ljava/lang/String;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v2, v8

    move-object v8, v1

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    move v3, v8

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v4, v8

    move v8, v2

    if-eqz v8, :cond_0

    move v8, v2

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_0

    move v8, v3

    move v9, v2

    if-eq v8, v9, :cond_1

    :cond_0
    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "NAMESPACE_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    new-instance v8, Lorg/w3c/dom/DOMException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xe

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    :cond_1
    const/4 v8, 0x0

    move v5, v8

    move v8, v2

    if-lez v8, :cond_3

    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->isNCNameStart(I)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "INVALID_CHARACTER_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    new-instance v8, Lorg/w3c/dom/DOMException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x5

    move-object v11, v6

    invoke-direct {v9, v10, v11}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    :cond_2
    const/4 v8, 0x1

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v2

    if-lt v8, v9, :cond_4

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    :cond_3
    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->isNCNameStart(I)Z

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "INVALID_CHARACTER_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    new-instance v8, Lorg/w3c/dom/DOMException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x5

    move-object v11, v6

    invoke-direct {v9, v10, v11}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    :cond_4
    move-object v8, v1

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->isNCName(I)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "INVALID_CHARACTER_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    new-instance v8, Lorg/w3c/dom/DOMException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x5

    move-object v11, v7

    invoke-direct {v9, v10, v11}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v6, v8

    :goto_1
    move v8, v6

    move v9, v4

    if-lt v8, v9, :cond_7

    return-void

    :cond_7
    move-object v8, v1

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/apache/xerces/util/XMLChar;->isNCName(I)Z

    move-result v8

    if-nez v8, :cond_8

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "INVALID_CHARACTER_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    new-instance v8, Lorg/w3c/dom/DOMException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x5

    move-object v11, v7

    invoke-direct {v9, v10, v11}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method protected createDocument(Lorg/w3c/dom/DocumentType;)Lorg/apache/xerces/dom/CoreDocumentImpl;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;)V

    move-object v0, v2

    return-object v0
.end method

.method public createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
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

    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-interface {v6}, Lorg/w3c/dom/DocumentType;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "WRONG_DOCUMENT_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x4

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_0
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->createDocument(Lorg/w3c/dom/DocumentType;)Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    move-object v4, v6

    move-object v6, v2

    if-nez v6, :cond_1

    move-object v6, v1

    if-eqz v6, :cond_2

    :cond_1
    move-object v6, v4

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    move-object v5, v6

    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    :cond_2
    move-object v6, v4

    move-object v0, v6

    return-object v0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->checkQName(Ljava/lang/String;)V

    new-instance v4, Lorg/apache/xerces/dom/DocumentTypeImpl;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/dom/DocumentTypeImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    return-object v0
.end method

.method public createLSInput()Lorg/w3c/dom/ls/LSInput;
    .locals 4

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/dom/DOMInputImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/apache/xerces/dom/DOMInputImpl;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method public createLSOutput()Lorg/w3c/dom/ls/LSOutput;
    .locals 4

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/dom/DOMOutputImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/apache/xerces/dom/DOMOutputImpl;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method public createLSParser(SLjava/lang/String;)Lorg/w3c/dom/ls/LSParser;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move-object v4, v2

    if-eqz v4, :cond_1

    const-string/jumbo v4, "http://www.w3.org/2001/XMLSchema"

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "http://www.w3.org/TR/REC-xml"

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "NOT_SUPPORTED_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0x9

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v2

    const-string/jumbo v5, "http://www.w3.org/TR/REC-xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lorg/apache/xerces/parsers/DOMParserImpl;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "org.apache.xerces.parsers.XML11DTDConfiguration"

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/parsers/DOMParserImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_2
    new-instance v4, Lorg/apache/xerces/parsers/DOMParserImpl;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/parsers/DOMParserImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public createLSSerializer()Lorg/w3c/dom/ls/LSSerializer;
    .locals 6

    move-object v0, p0

    :try_start_0
    const-string/jumbo v2, "org.apache.xml.serializer.dom3.LSSerializerImpl"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lorg/apache/xerces/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/ls/LSSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    move-object v1, v2

    new-instance v2, Lorg/apache/xml/serialize/DOMSerializerImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xml/serialize/DOMSerializerImpl;-><init>()V

    move-object v0, v2

    goto :goto_0
.end method

.method final declared-synchronized getDTDLoader(Ljava/lang/String;)Lorg/apache/xerces/impl/dtd/XMLDTDLoader;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v10, p0

    monitor-enter v10

    :try_start_0
    const-string/jumbo v5, "1.1"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_0
    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    if-gez v5, :cond_0

    const-string/jumbo v5, "org.apache.xerces.impl.dtd.XML11DTDProcessor"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    :goto_1
    monitor-exit v10

    return-object v0

    :cond_0
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    aget-object v5, v5, v6

    move-object v2, v5

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    if-eqz v5, :cond_1

    move-object v5, v3

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    move-object v4, v5

    move-object v5, v3

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    move-object v5, v4

    move-object v0, v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    move-object v11, v6

    move v12, v7

    move v6, v12

    move-object v7, v11

    move v8, v12

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    const/4 v7, 0x0

    aput-object v7, v5, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_2
    move-object v5, v0

    :try_start_2
    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    aget-object v5, v5, v6

    move-object v2, v5

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_3

    move-object v5, v3

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    if-eqz v5, :cond_3

    move-object v5, v3

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    move-object v4, v5

    move-object v5, v3

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    move-object v5, v4

    move-object v0, v5

    goto :goto_1

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    move-object v11, v6

    move v12, v7

    move v6, v12

    move-object v7, v11

    move v8, v12

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    :cond_4
    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    if-gez v5, :cond_2

    new-instance v5, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v5

    goto/16 :goto_1
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    const-string/jumbo v7, "+XPath"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_0
    const-string/jumbo v6, "org.apache.xpath.domapi.XPathEvaluatorImpl"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v6

    move-object v4, v6

    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move-object v7, v4

    array-length v7, v7

    if-lt v6, v7, :cond_1

    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_1
    move-object v6, v4

    move v7, v5

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "org.w3c.dom.xpath.XPathEvaluator"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v3, v6

    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1

    :cond_3
    sget-object v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    move-object v0, v6

    goto :goto_1
.end method

.method declared-synchronized getValidator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/RevalidationHandler;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v11, p0

    monitor-enter v11

    move-object v6, v1

    :try_start_0
    const-string/jumbo v7, "http://www.w3.org/2001/XMLSchema"

    if-ne v6, v7, :cond_2

    :goto_0
    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    if-gez v6, :cond_0

    const-string/jumbo v6, "org.apache.xerces.impl.xs.XMLSchemaValidator"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/impl/RevalidationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    :goto_1
    monitor-exit v11

    return-object v0

    :cond_0
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    aget-object v6, v6, v7

    move-object v3, v6

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_1

    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v6, :cond_1

    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v5, v6

    move-object v6, v4

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    move-object v6, v5

    move-object v0, v6

    goto :goto_1

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    move-object v12, v7

    move v13, v8

    move v7, v13

    move-object v8, v12

    move v9, v13

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    const/4 v8, 0x0

    aput-object v8, v6, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    :cond_2
    move-object v6, v1

    :try_start_2
    const-string/jumbo v7, "http://www.w3.org/TR/REC-xml"

    if-ne v6, v7, :cond_8

    const-string/jumbo v6, "1.1"

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_2
    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    if-gez v6, :cond_3

    const-string/jumbo v6, "org.apache.xerces.impl.dtd.XML11DTDValidator"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    aget-object v6, v6, v7

    move-object v3, v6

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_4

    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v6, :cond_4

    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v5, v6

    move-object v6, v4

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    move-object v6, v5

    move-object v0, v6

    goto/16 :goto_1

    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    move-object v12, v7

    move v13, v8

    move v7, v13

    move-object v8, v12

    move v9, v13

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    const/4 v8, 0x0

    aput-object v8, v6, v7

    goto :goto_2

    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    aget-object v6, v6, v7

    move-object v3, v6

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_6

    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v6, :cond_6

    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v5, v6

    move-object v6, v4

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    move-object v6, v5

    move-object v0, v6

    goto/16 :goto_1

    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    move-object v12, v7

    move v13, v8

    move v7, v13

    move-object v8, v12

    move v9, v13

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    const/4 v8, 0x0

    aput-object v8, v6, v7

    :cond_7
    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    if-gez v6, :cond_5

    const-string/jumbo v6, "org.apache.xerces.impl.dtd.XMLDTDValidator"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/impl/RevalidationHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v6

    goto/16 :goto_1

    :cond_8
    const/4 v6, 0x0

    move-object v0, v6

    goto/16 :goto_1
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    const/4 v7, 0x1

    :goto_0
    move v3, v7

    move-object v7, v1

    const-string/jumbo v8, "+XPath"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v3

    if-nez v7, :cond_1

    move-object v7, v2

    const-string/jumbo v8, "3.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_1
    :try_start_0
    const-string/jumbo v7, "org.apache.xpath.domapi.XPathEvaluatorImpl"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v7

    move-object v4, v7

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v7

    move-object v5, v7

    const/4 v7, 0x0

    move v6, v7

    :goto_1
    move v7, v6

    move-object v8, v5

    array-length v8, v8

    if-lt v7, v8, :cond_3

    const/4 v7, 0x1

    move v0, v7

    :goto_2
    return v0

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    move-object v7, v5

    move v8, v6

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "org.w3c.dom.xpath.XPathEvaluator"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    move v0, v7

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    move-object v4, v7

    const/4 v7, 0x0

    move v0, v7

    goto :goto_2

    :cond_5
    move-object v7, v1

    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    :cond_6
    move-object v7, v1

    const-string/jumbo v8, "Core"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v3

    if-nez v7, :cond_b

    move-object v7, v2

    const-string/jumbo v8, "1.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    move-object v7, v2

    const-string/jumbo v8, "2.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    move-object v7, v2

    const-string/jumbo v8, "3.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    :cond_7
    move-object v7, v1

    const-string/jumbo v8, "XML"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v3

    if-nez v7, :cond_b

    move-object v7, v2

    const-string/jumbo v8, "1.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    move-object v7, v2

    const-string/jumbo v8, "2.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    move-object v7, v2

    const-string/jumbo v8, "3.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    :cond_8
    move-object v7, v1

    const-string/jumbo v8, "XMLVersion"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v3

    if-nez v7, :cond_b

    move-object v7, v2

    const-string/jumbo v8, "1.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    move-object v7, v2

    const-string/jumbo v8, "1.1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    :cond_9
    move-object v7, v1

    const-string/jumbo v8, "LS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v3

    if-nez v7, :cond_b

    move-object v7, v2

    const-string/jumbo v8, "3.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    :cond_a
    move-object v7, v1

    const-string/jumbo v8, "ElementTraversal"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v7, v3

    if-nez v7, :cond_b

    move-object v7, v2

    const-string/jumbo v8, "1.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    const/4 v7, 0x1

    :goto_3
    move v0, v7

    goto/16 :goto_2

    :cond_c
    const/4 v7, 0x0

    goto :goto_3
.end method

.method final declared-synchronized releaseDTDLoader(Ljava/lang/String;Lorg/apache/xerces/impl/dtd/XMLDTDLoader;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v12, p0

    monitor-enter v12

    :try_start_0
    const-string/jumbo v5, "1.1"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    array-length v5, v5

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    if-ne v5, v6, :cond_0

    move-object v5, v0

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaderCurrentSize:I

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    iput v6, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaderCurrentSize:I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaderCurrentSize:I

    new-array v5, v5, [Ljava/lang/ref/SoftReference;

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    aget-object v5, v5, v6

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v12

    return-void

    :cond_1
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    new-instance v7, Ljava/lang/ref/SoftReference;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    new-instance v9, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v2

    invoke-direct {v10, v11}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;-><init>(Lorg/apache/xerces/impl/dtd/XMLDTDLoader;)V

    invoke-direct {v8, v9}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    :goto_1
    goto :goto_0

    :cond_2
    move-object v5, v0

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    array-length v5, v5

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    if-ne v5, v6, :cond_3

    move-object v5, v0

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaderCurrentSize:I

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    iput v6, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaderCurrentSize:I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaderCurrentSize:I

    new-array v5, v5, [Ljava/lang/ref/SoftReference;

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    aget-object v5, v5, v6

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_4

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_4

    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    goto :goto_0

    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    new-instance v7, Ljava/lang/ref/SoftReference;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    new-instance v9, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v2

    invoke-direct {v10, v11}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;-><init>(Lorg/apache/xerces/impl/dtd/XMLDTDLoader;)V

    invoke-direct {v8, v9}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method declared-synchronized releaseValidator(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/impl/RevalidationHandler;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v13, p0

    monitor-enter v13

    move-object v6, v1

    :try_start_0
    const-string/jumbo v7, "http://www.w3.org/2001/XMLSchema"

    if-ne v6, v7, :cond_3

    move-object v6, v0

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    array-length v6, v6

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    if-ne v6, v7, :cond_0

    move-object v6, v0

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidatorsCurrentSize:I

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    iput v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidatorsCurrentSize:I

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidatorsCurrentSize:I

    new-array v6, v6, [Ljava/lang/ref/SoftReference;

    move-object v4, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    const/4 v7, 0x0

    move-object v8, v4

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    aget-object v6, v6, v7

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lorg/apache/xerces/impl/RevalidationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v13

    return-void

    :cond_1
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    new-instance v8, Ljava/lang/ref/SoftReference;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v3

    invoke-direct {v11, v12}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;-><init>(Lorg/apache/xerces/impl/RevalidationHandler;)V

    invoke-direct {v9, v10}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    move-object v6, v1

    const-string/jumbo v7, "http://www.w3.org/TR/REC-xml"

    if-ne v6, v7, :cond_2

    const-string/jumbo v6, "1.1"

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, v0

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    array-length v6, v6

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    if-ne v6, v7, :cond_4

    move-object v6, v0

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidatorsCurrentSize:I

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    iput v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidatorsCurrentSize:I

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidatorsCurrentSize:I

    new-array v6, v6, [Ljava/lang/ref/SoftReference;

    move-object v4, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    const/4 v7, 0x0

    move-object v8, v4

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    aget-object v6, v6, v7

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_5

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_5

    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lorg/apache/xerces/impl/RevalidationHandler;

    goto :goto_0

    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    new-instance v8, Ljava/lang/ref/SoftReference;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v3

    invoke-direct {v11, v12}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;-><init>(Lorg/apache/xerces/impl/RevalidationHandler;)V

    invoke-direct {v9, v10}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    goto :goto_1

    :cond_6
    move-object v6, v0

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    array-length v6, v6

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    if-ne v6, v7, :cond_7

    move-object v6, v0

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidatorsCurrentSize:I

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    iput v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidatorsCurrentSize:I

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidatorsCurrentSize:I

    new-array v6, v6, [Ljava/lang/ref/SoftReference;

    move-object v4, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    const/4 v7, 0x0

    move-object v8, v4

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    :cond_7
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    aget-object v6, v6, v7

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_8

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_8

    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lorg/apache/xerces/impl/RevalidationHandler;

    goto/16 :goto_0

    :cond_8
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    new-instance v8, Ljava/lang/ref/SoftReference;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v3

    invoke-direct {v11, v12}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;-><init>(Lorg/apache/xerces/impl/RevalidationHandler;)V

    invoke-direct {v9, v10}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v13

    throw v0
.end method
