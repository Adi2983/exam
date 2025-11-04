.class public Lorg/apache/xml/serialize/DOMSerializerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/ls/LSSerializer;
.implements Lorg/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;
    }
.end annotation


# static fields
.field protected static final CDATA:S = 0x8s

.field protected static final COMMENTS:S = 0x20s

.field protected static final DISCARDDEFAULT:S = 0x40s

.field protected static final DOM_ELEMENT_CONTENT_WHITESPACE:S = 0x400s

.field protected static final ENTITIES:S = 0x4s

.field protected static final INFOSET:S = 0x80s

.field protected static final NAMESPACES:S = 0x1s

.field protected static final NSDECL:S = 0x200s

.field protected static final PRETTY_PRINT:S = 0x800s

.field protected static final SPLITCDATA:S = 0x10s

.field protected static final WELLFORMED:S = 0x2s

.field protected static final XMLDECL:S = 0x100s


# instance fields
.field private final fError:Lorg/apache/xerces/dom/DOMErrorImpl;

.field private fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field private final fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

.field private fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

.field protected features:S

.field private serializer:Lorg/apache/xml/serialize/XMLSerializer;

.field private xml11Serializer:Lorg/apache/xml/serialize/XML11Serializer;


# direct methods
.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-short v2, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/dom/DOMLocatorImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-short v2, v2, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v3, 0x1

    or-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-short v2, v2, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v3, 0x4

    or-int/lit8 v2, v2, 0x4

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-short v2, v2, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v3, 0x20

    or-int/lit8 v2, v2, 0x20

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-short v2, v2, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v3, 0x8

    or-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-short v2, v2, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v3, 0x10

    or-int/lit8 v2, v2, 0x10

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-short v2, v2, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v3, 0x2

    or-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-short v2, v2, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v3, 0x200

    or-int/lit16 v2, v2, 0x200

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-short v2, v2, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v3, 0x400

    or-int/lit16 v2, v2, 0x400

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-short v2, v2, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v3, 0x40

    or-int/lit8 v2, v2, 0x40

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget-short v2, v2, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v3, 0x100

    or-int/lit16 v2, v2, 0x100

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v1, v0

    new-instance v2, Lorg/apache/xml/serialize/XMLSerializer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xml/serialize/XMLSerializer;-><init>()V

    iput-object v2, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->serializer:Lorg/apache/xml/serialize/XMLSerializer;

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/DOMSerializerImpl;->serializer:Lorg/apache/xml/serialize/XMLSerializer;

    invoke-direct {v1, v2}, Lorg/apache/xml/serialize/DOMSerializerImpl;->initSerializer(Lorg/apache/xml/serialize/XMLSerializer;)V

    return-void
.end method

.method private _getInputEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_0

    move-object v6, v1

    check-cast v6, Lorg/w3c/dom/Document;

    :goto_0
    move-object v2, v6

    move-object v6, v2

    if-eqz v6, :cond_1

    invoke-static {}, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$000()Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-static {}, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$200()Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v7, v2

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_0
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v3, v6

    move-object v6, v3

    throw v6

    :catch_1
    move-exception v6

    move-object v4, v6

    move-object v6, v4

    throw v6

    :catch_2
    move-exception v6

    move-object v5, v6

    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method private _getXmlEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_0

    move-object v6, v1

    check-cast v6, Lorg/w3c/dom/Document;

    :goto_0
    move-object v2, v6

    move-object v6, v2

    if-eqz v6, :cond_1

    invoke-static {}, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$000()Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-static {}, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$300()Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v7, v2

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_0
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v3, v6

    move-object v6, v3

    throw v6

    :catch_1
    move-exception v6

    move-object v4, v6

    move-object v6, v4

    throw v6

    :catch_2
    move-exception v6

    move-object v5, v6

    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method private _getXmlVersion(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_0

    move-object v6, v1

    check-cast v6, Lorg/w3c/dom/Document;

    :goto_0
    move-object v2, v6

    move-object v6, v2

    if-eqz v6, :cond_1

    invoke-static {}, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$000()Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-static {}, Lorg/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$100()Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v7, v2

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_0
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v3, v6

    move-object v6, v3

    throw v6

    :catch_1
    move-exception v6

    move-object v4, v6

    move-object v6, v4

    throw v6

    :catch_2
    move-exception v6

    move-object v5, v6

    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method private copySettings(Lorg/apache/xml/serialize/XMLSerializer;Lorg/apache/xml/serialize/XMLSerializer;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iput-object v4, v3, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/OutputFormat;->setLineSeparator(Ljava/lang/String;)V

    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    iput-object v4, v3, Lorg/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    return-void
.end method

.method private initSerializer(Lorg/apache/xml/serialize/XMLSerializer;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    new-instance v3, Lorg/apache/xerces/util/NamespaceSupport;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v3, v2, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v2, v1

    new-instance v3, Lorg/apache/xerces/util/NamespaceSupport;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v3, v2, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v2, v1

    new-instance v3, Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v3, v2, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method

.method private prepareForSerialization(Lorg/apache/xml/serialize/XMLSerializer;Lorg/w3c/dom/Node;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v9, v1

    invoke-virtual {v9}, Lorg/apache/xml/serialize/XMLSerializer;->reset()Z

    move-result v9

    move-object v9, v1

    move-object v10, v0

    iget-short v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    iput-short v10, v9, Lorg/apache/xml/serialize/XMLSerializer;->features:S

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iput-object v10, v9, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v9, v1

    move-object v10, v0

    iget-short v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, v9, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move-object v9, v1

    move-object v10, v0

    iget-short v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v11, 0x200

    and-int/lit16 v10, v10, 0x200

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, v9, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object v10, v0

    iget-short v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v11, 0x800

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/OutputFormat;->setIndenting(Z)V

    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object v10, v0

    iget-short v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v11, 0x20

    and-int/lit8 v10, v10, 0x20

    if-nez v10, :cond_5

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/OutputFormat;->setOmitComments(Z)V

    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object v10, v0

    iget-short v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v11, 0x100

    and-int/lit16 v10, v10, 0x100

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/OutputFormat;->setOmitXMLDeclaration(Z)V

    move-object v9, v0

    iget-short v9, v9, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v10, 0x2

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_1

    move-object v9, v2

    move-object v4, v9

    const/4 v9, 0x1

    move v6, v9

    move-object v9, v2

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_7

    move-object v9, v2

    check-cast v9, Lorg/w3c/dom/Document;

    :goto_5
    move-object v7, v9

    move-object v9, v7

    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string/jumbo v10, "isXMLVersionChanged()"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v5, v9

    move-object v9, v5

    if-eqz v9, :cond_0

    move-object v9, v5

    move-object v10, v7

    const/4 v11, 0x0

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    move v6, v9

    :cond_0
    :goto_6
    move-object v9, v2

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_c

    :goto_7
    move-object v9, v2

    if-nez v9, :cond_8

    :cond_1
    :goto_8
    return-void

    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    move-object v9, v2

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v9

    goto :goto_5

    :catch_0
    move-exception v9

    move-object v8, v9

    goto :goto_6

    :cond_8
    move-object v9, v0

    move-object v10, v2

    move v11, v6

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/xml/serialize/DOMSerializerImpl;->verify(Lorg/w3c/dom/Node;ZZ)V

    move-object v9, v2

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v3, v9

    :cond_9
    :goto_9
    move-object v9, v3

    if-eqz v9, :cond_a

    :goto_a
    move-object v9, v3

    move-object v2, v9

    goto :goto_7

    :cond_a
    move-object v9, v2

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v3, v9

    move-object v9, v3

    if-nez v9, :cond_9

    move-object v9, v2

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v2, v9

    move-object v9, v4

    move-object v10, v2

    if-ne v9, v10, :cond_b

    const/4 v9, 0x0

    move-object v3, v9

    goto :goto_a

    :cond_b
    move-object v9, v2

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v3, v9

    goto :goto_9

    :cond_c
    move-object v9, v0

    move-object v10, v2

    move v11, v6

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/xml/serialize/DOMSerializerImpl;->verify(Lorg/w3c/dom/Node;ZZ)V

    goto :goto_8
.end method

.method private verify(Lorg/w3c/dom/Node;ZZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v10, v1

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    move v4, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v11, v1

    iput-object v11, v10, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    move v10, v4

    packed-switch v10, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    const/4 v11, 0x0

    iput-object v11, v10, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    return-void

    :pswitch_1
    goto :goto_0

    :pswitch_2
    goto :goto_0

    :pswitch_3
    move v10, v2

    if-eqz v10, :cond_1

    move-object v10, v0

    iget-short v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    move-object v10, v1

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v10

    move-object v11, v1

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v11

    move v12, v3

    invoke-static {v10, v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    move v5, v10

    :goto_1
    move v10, v5

    if-nez v10, :cond_1

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v10, :cond_1

    const-string/jumbo v10, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v11, "wf-invalid-character-in-node-name"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    const-string/jumbo v15, "Element"

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x1

    move-object v15, v1

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/DOMSerializerImpl;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v13, v6

    const/4 v14, 0x3

    const-string/jumbo v15, "wf-invalid-character-in-node-name"

    invoke-static/range {v10 .. v15}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_1
    move-object v10, v1

    invoke-interface {v10}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v1

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    :goto_2
    move-object v6, v10

    move-object v10, v6

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    move v7, v10

    :goto_3
    move v10, v7

    move-object v11, v6

    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    if-lt v10, v11, :cond_4

    goto :goto_0

    :cond_2
    move-object v10, v1

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    move v11, v3

    invoke-static {v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v10

    move v5, v10

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    move-object v10, v6

    move v11, v7

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Attr;

    move-object v8, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v11, v8

    iput-object v11, v10, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/DOMSerializerImpl;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v13, v6

    move-object v14, v8

    move-object v15, v8

    invoke-interface {v15}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v3

    invoke-static/range {v10 .. v16}, Lorg/apache/xerces/dom/DOMNormalizer;->isAttrValueWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/Attr;Ljava/lang/String;Z)V

    move v10, v2

    if-eqz v10, :cond_5

    move-object v10, v8

    invoke-interface {v10}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v10

    move v11, v3

    invoke-static {v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v10

    move v5, v10

    move v10, v5

    if-nez v10, :cond_5

    const-string/jumbo v10, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v11, "wf-invalid-character-in-node-name"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    const-string/jumbo v15, "Attr"

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x1

    move-object v15, v1

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/DOMSerializerImpl;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v13, v9

    const/4 v14, 0x3

    const-string/jumbo v15, "wf-invalid-character-in-node-name"

    invoke-static/range {v10 .. v15}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :pswitch_4
    move-object v10, v0

    iget-short v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v11, 0x20

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/DOMSerializerImpl;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v13, v1

    check-cast v13, Lorg/w3c/dom/Comment;

    invoke-interface {v13}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v13

    move v14, v3

    invoke-static {v10, v11, v12, v13, v14}, Lorg/apache/xerces/dom/DOMNormalizer;->isCommentWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_5
    move v10, v2

    if-eqz v10, :cond_0

    move-object v10, v0

    iget-short v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v11, 0x4

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_0

    move-object v10, v1

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    move v11, v3

    invoke-static {v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v10

    goto/16 :goto_0

    :pswitch_6
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/DOMSerializerImpl;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v13, v1

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    move v14, v3

    invoke-static {v10, v11, v12, v13, v14}, Lorg/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_7
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/DOMSerializerImpl;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v13, v1

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    move v14, v3

    invoke-static {v10, v11, v12, v13, v14}, Lorg/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_8
    move-object v10, v1

    check-cast v10, Lorg/w3c/dom/ProcessingInstruction;

    move-object v6, v10

    move-object v10, v6

    invoke-interface {v10}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    move v10, v2

    if-eqz v10, :cond_6

    move v10, v3

    if-eqz v10, :cond_7

    move-object v10, v7

    invoke-static {v10}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v10

    move v5, v10

    :goto_4
    move v10, v5

    if-nez v10, :cond_6

    const-string/jumbo v10, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v11, "wf-invalid-character-in-node-name"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    const-string/jumbo v15, "Element"

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x1

    move-object v15, v1

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/DOMSerializerImpl;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v13, v8

    const/4 v14, 0x3

    const-string/jumbo v15, "wf-invalid-character-in-node-name"

    invoke-static/range {v10 .. v15}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_6
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/DOMSerializerImpl;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v13, v6

    invoke-interface {v13}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v13

    move v14, v3

    invoke-static {v10, v11, v12, v13, v14}, Lorg/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    move-object v10, v7

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v10

    move v5, v10

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x1

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_7

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move v3, v4

    move-object v4, v1

    const-string/jumbo v5, "namespaces"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "split-cdata-sections"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "discard-default-content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "xml-declaration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "well-formed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "infoset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "entities"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "cdata-sections"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "comments"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "format-pretty-print"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "namespace-declarations"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    :cond_2
    move-object v4, v1

    const-string/jumbo v5, "canonical-form"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v1

    const-string/jumbo v5, "validate-if-schema"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v1

    const-string/jumbo v5, "validate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v1

    const-string/jumbo v5, "check-character-normalization"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v1

    const-string/jumbo v5, "datatype-normalization"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v1

    const-string/jumbo v5, "normalize-characters"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    move v4, v3

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    move-object v4, v1

    const-string/jumbo v5, "element-content-whitespace"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object v4, v1

    const-string/jumbo v5, "ignore-unknown-character-denormalizations"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_6
    move v4, v3

    move v0, v4

    goto/16 :goto_0

    :cond_7
    move-object v4, v1

    const-string/jumbo v5, "error-handler"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v2

    if-eqz v4, :cond_9

    :cond_8
    move-object v4, v2

    instance-of v4, v4, Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v4, :cond_a

    :cond_9
    const/4 v4, 0x1

    move v0, v4

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public getFilter()Lorg/w3c/dom/ls/LSSerializerFilter;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->serializer:Lorg/apache/xml/serialize/XMLSerializer;

    iget-object v1, v1, Lorg/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    move-object v0, v1

    return-object v0
.end method

.method public getNewLine()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/DOMSerializerImpl;->serializer:Lorg/apache/xml/serialize/XMLSerializer;

    iget-object v1, v1, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lorg/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string/jumbo v4, "comments"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "namespaces"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    move-object v0, v3

    goto :goto_1

    :cond_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    move-object v3, v1

    const-string/jumbo v4, "xml-declaration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v4, 0x100

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    move-object v0, v3

    goto :goto_1

    :cond_4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_5
    move-object v3, v1

    const-string/jumbo v4, "cdata-sections"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    move-object v0, v3

    goto :goto_1

    :cond_6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_7
    move-object v3, v1

    const-string/jumbo v4, "entities"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_8

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5
    move-object v0, v3

    goto :goto_1

    :cond_8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_9
    move-object v3, v1

    const-string/jumbo v4, "split-cdata-sections"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_a

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_6
    move-object v0, v3

    goto :goto_1

    :cond_a
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_b
    move-object v3, v1

    const-string/jumbo v4, "well-formed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_c

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_7
    move-object v0, v3

    goto/16 :goto_1

    :cond_c
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_d
    move-object v3, v1

    const-string/jumbo v4, "namespace-declarations"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v4, 0x200

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_e

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_8
    move-object v0, v3

    goto/16 :goto_1

    :cond_e
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_f
    move-object v3, v1

    const-string/jumbo v4, "element-content-whitespace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    move-object v3, v1

    const-string/jumbo v4, "ignore-unknown-character-denormalizations"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v3

    goto/16 :goto_1

    :cond_11
    move-object v3, v1

    const-string/jumbo v4, "discard-default-content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v4, 0x40

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_12

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_9
    move-object v0, v3

    goto/16 :goto_1

    :cond_12
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_13
    move-object v3, v1

    const-string/jumbo v4, "format-pretty-print"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v4, 0x800

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_14

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_a
    move-object v0, v3

    goto/16 :goto_1

    :cond_14
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_15
    move-object v3, v1

    const-string/jumbo v4, "infoset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_16

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_16

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_16

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v4, 0x200

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_16

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_16

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_16

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v3

    goto/16 :goto_1

    :cond_16
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v3

    goto/16 :goto_1

    :cond_17
    move-object v3, v1

    const-string/jumbo v4, "normalize-characters"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    move-object v3, v1

    const-string/jumbo v4, "canonical-form"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    move-object v3, v1

    const-string/jumbo v4, "validate-if-schema"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    move-object v3, v1

    const-string/jumbo v4, "check-character-normalization"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    move-object v3, v1

    const-string/jumbo v4, "validate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    move-object v3, v1

    const-string/jumbo v4, "validate-if-schema"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    move-object v3, v1

    const-string/jumbo v4, "datatype-normalization"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_18
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v3

    goto/16 :goto_1

    :cond_19
    move-object v3, v1

    const-string/jumbo v4, "error-handler"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v0, v3

    goto/16 :goto_1

    :cond_1a
    move-object v3, v1

    const-string/jumbo v4, "resource-resolver"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    move-object v3, v1

    const-string/jumbo v4, "schema-location"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    move-object v3, v1

    const-string/jumbo v4, "schema-type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1b
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "FEATURE_NOT_SUPPORTED"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x9

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_1c
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "FEATURE_NOT_FOUND"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x8

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3
.end method

.method public getParameterNames()Lorg/w3c/dom/DOMStringList;
    .locals 7

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/DOMSerializerImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

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

    const-string/jumbo v3, "split-cdata-sections"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "discard-default-content"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "xml-declaration"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "canonical-form"

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

    const-string/jumbo v3, "check-character-normalization"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "datatype-normalization"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "format-pretty-print"

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

    const-string/jumbo v3, "namespace-declarations"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "element-content-whitespace"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "entities"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "cdata-sections"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "comments"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "ignore-unknown-character-denormalizations"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "error-handler"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/dom/DOMStringListImpl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v3, v2, Lorg/apache/xml/serialize/DOMSerializerImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/DOMSerializerImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    move-object v0, v2

    return-object v0
.end method

.method public setFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/DOMSerializerImpl;->serializer:Lorg/apache/xml/serialize/XMLSerializer;

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    return-void
.end method

.method public setNewLine(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/DOMSerializerImpl;->serializer:Lorg/apache/xml/serialize/XMLSerializer;

    iget-object v2, v2, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/OutputFormat;->setLineSeparator(Ljava/lang/String;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 12
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

    if-eqz v5, :cond_1a

    move-object v5, v2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v3, v5

    move-object v5, v1

    const-string/jumbo v6, "infoset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v7, -0x5

    and-int/lit8 v6, v6, -0x5

    int-to-short v6, v6

    iput-short v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, -0x9

    and-int/lit8 v6, v6, -0x9

    int-to-short v6, v6

    iput-short v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    iput-short v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, 0x200

    or-int/lit16 v6, v6, 0x200

    int-to-short v6, v6

    iput-short v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v7, 0x2

    or-int/lit8 v6, v6, 0x2

    int-to-short v6, v6

    iput-short v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, 0x20

    or-int/lit8 v6, v6, 0x20

    int-to-short v6, v6

    iput-short v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v5, v1

    const-string/jumbo v6, "xml-declaration"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, 0x100

    or-int/lit16 v6, v6, 0x100

    int-to-short v6, v6

    :goto_1
    iput-short v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto :goto_0

    :cond_2
    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, -0x101

    and-int/lit16 v6, v6, -0x101

    int-to-short v6, v6

    goto :goto_1

    :cond_3
    move-object v5, v1

    const-string/jumbo v6, "namespaces"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    :goto_2
    iput-short v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->serializer:Lorg/apache/xml/serialize/XMLSerializer;

    move v6, v3

    iput-boolean v6, v5, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    goto :goto_0

    :cond_4
    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v7, -0x2

    and-int/lit8 v6, v6, -0x2

    int-to-short v6, v6

    goto :goto_2

    :cond_5
    move-object v5, v1

    const-string/jumbo v6, "split-cdata-sections"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_6

    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, 0x10

    or-int/lit8 v6, v6, 0x10

    int-to-short v6, v6

    :goto_3
    iput-short v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto :goto_0

    :cond_6
    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, -0x11

    and-int/lit8 v6, v6, -0x11

    int-to-short v6, v6

    goto :goto_3

    :cond_7
    move-object v5, v1

    const-string/jumbo v6, "discard-default-content"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_8

    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, 0x40

    or-int/lit8 v6, v6, 0x40

    int-to-short v6, v6

    :goto_4
    iput-short v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_0

    :cond_8
    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, -0x41

    and-int/lit8 v6, v6, -0x41

    int-to-short v6, v6

    goto :goto_4

    :cond_9
    move-object v5, v1

    const-string/jumbo v6, "well-formed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_a

    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v7, 0x2

    or-int/lit8 v6, v6, 0x2

    int-to-short v6, v6

    :goto_5
    iput-short v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_0

    :cond_a
    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v7, -0x3

    and-int/lit8 v6, v6, -0x3

    int-to-short v6, v6

    goto :goto_5

    :cond_b
    move-object v5, v1

    const-string/jumbo v6, "entities"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_c

    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v7, 0x4

    or-int/lit8 v6, v6, 0x4

    int-to-short v6, v6

    :goto_6
    iput-short v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_0

    :cond_c
    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v7, -0x5

    and-int/lit8 v6, v6, -0x5

    int-to-short v6, v6

    goto :goto_6

    :cond_d
    move-object v5, v1

    const-string/jumbo v6, "cdata-sections"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_e

    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, 0x8

    or-int/lit8 v6, v6, 0x8

    int-to-short v6, v6

    :goto_7
    iput-short v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_0

    :cond_e
    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, -0x9

    and-int/lit8 v6, v6, -0x9

    int-to-short v6, v6

    goto :goto_7

    :cond_f
    move-object v5, v1

    const-string/jumbo v6, "comments"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_10

    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, 0x20

    or-int/lit8 v6, v6, 0x20

    int-to-short v6, v6

    :goto_8
    iput-short v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_0

    :cond_10
    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, -0x21

    and-int/lit8 v6, v6, -0x21

    int-to-short v6, v6

    goto :goto_8

    :cond_11
    move-object v5, v1

    const-string/jumbo v6, "format-pretty-print"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_12

    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, 0x800

    or-int/lit16 v6, v6, 0x800

    int-to-short v6, v6

    :goto_9
    iput-short v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_0

    :cond_12
    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, -0x801

    and-int/lit16 v6, v6, -0x801

    int-to-short v6, v6

    goto :goto_9

    :cond_13
    move-object v5, v1

    const-string/jumbo v6, "canonical-form"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    move-object v5, v1

    const-string/jumbo v6, "validate-if-schema"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    move-object v5, v1

    const-string/jumbo v6, "validate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    move-object v5, v1

    const-string/jumbo v6, "check-character-normalization"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    move-object v5, v1

    const-string/jumbo v6, "datatype-normalization"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    move-object v5, v1

    const-string/jumbo v6, "normalize-characters"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_14
    move v5, v3

    if-eqz v5, :cond_0

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "FEATURE_NOT_SUPPORTED"

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

    move-object v4, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/16 v7, 0x9

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_15
    move-object v5, v1

    const-string/jumbo v6, "namespace-declarations"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    move-object v5, v0

    move v6, v3

    if-eqz v6, :cond_16

    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, 0x200

    or-int/lit16 v6, v6, 0x200

    int-to-short v6, v6

    :goto_a
    iput-short v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->serializer:Lorg/apache/xml/serialize/XMLSerializer;

    move v6, v3

    iput-boolean v6, v5, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    goto/16 :goto_0

    :cond_16
    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/16 v7, -0x201

    and-int/lit16 v6, v6, -0x201

    int-to-short v6, v6

    goto :goto_a

    :cond_17
    move-object v5, v1

    const-string/jumbo v6, "element-content-whitespace"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18

    move-object v5, v1

    const-string/jumbo v6, "ignore-unknown-character-denormalizations"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_18
    move v5, v3

    if-nez v5, :cond_0

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "FEATURE_NOT_SUPPORTED"

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

    move-object v4, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/16 v7, 0x9

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_19
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "FEATURE_NOT_FOUND"

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

    move-object v4, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/16 v7, 0x9

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_1a
    move-object v5, v1

    const-string/jumbo v6, "error-handler"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    move-object v5, v2

    if-eqz v5, :cond_1b

    move-object v5, v2

    instance-of v5, v5, Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v5, :cond_1c

    :cond_1b
    move-object v5, v0

    move-object v6, v2

    check-cast v6, Lorg/w3c/dom/DOMErrorHandler;

    iput-object v6, v5, Lorg/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "TYPE_MISMATCH_ERR"

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

    move-object v3, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/16 v7, 0x11

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_1d
    move-object v5, v1

    const-string/jumbo v6, "resource-resolver"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1e

    move-object v5, v1

    const-string/jumbo v6, "schema-location"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1e

    move-object v5, v1

    const-string/jumbo v6, "schema-type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object v5, v2

    if-eqz v5, :cond_1f

    :cond_1e
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "FEATURE_NOT_SUPPORTED"

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

    move-object v3, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/16 v7, 0x9

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_1f
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "FEATURE_NOT_FOUND"

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

    move-object v3, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/16 v7, 0x8

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5
.end method

.method public write(Lorg/w3c/dom/Node;Lorg/w3c/dom/ls/LSOutput;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v13, v1

    if-nez v13, :cond_0

    const/4 v13, 0x0

    move v0, v13

    :goto_0
    return v0

    :cond_0
    const/4 v13, 0x0

    move-object v3, v13

    move-object v13, v0

    move-object v14, v1

    invoke-direct {v13, v14}, Lorg/apache/xml/serialize/DOMSerializerImpl;->_getXmlVersion(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    move-object v4, v13

    move-object v13, v4

    if-eqz v13, :cond_5

    move-object v13, v4

    const-string/jumbo v14, "1.1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lorg/apache/xml/serialize/XML11Serializer;

    if-nez v13, :cond_1

    move-object v13, v0

    new-instance v14, Lorg/apache/xml/serialize/XML11Serializer;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Lorg/apache/xml/serialize/XML11Serializer;-><init>()V

    iput-object v14, v13, Lorg/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lorg/apache/xml/serialize/XML11Serializer;

    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lorg/apache/xml/serialize/XML11Serializer;

    invoke-direct {v13, v14}, Lorg/apache/xml/serialize/DOMSerializerImpl;->initSerializer(Lorg/apache/xml/serialize/XMLSerializer;)V

    :cond_1
    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xml/serialize/DOMSerializerImpl;->serializer:Lorg/apache/xml/serialize/XMLSerializer;

    move-object v15, v0

    iget-object v15, v15, Lorg/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lorg/apache/xml/serialize/XML11Serializer;

    invoke-direct {v13, v14, v15}, Lorg/apache/xml/serialize/DOMSerializerImpl;->copySettings(Lorg/apache/xml/serialize/XMLSerializer;Lorg/apache/xml/serialize/XMLSerializer;)V

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lorg/apache/xml/serialize/XML11Serializer;

    move-object v3, v13

    :goto_1
    const/4 v13, 0x0

    move-object v5, v13

    move-object v13, v2

    invoke-interface {v13}, Lorg/w3c/dom/ls/LSOutput;->getEncoding()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v5, v14

    if-nez v13, :cond_2

    move-object v13, v0

    move-object v14, v1

    invoke-direct {v13, v14}, Lorg/apache/xml/serialize/DOMSerializerImpl;->_getInputEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    move-object v13, v5

    if-nez v13, :cond_2

    move-object v13, v0

    move-object v14, v1

    invoke-direct {v13, v14}, Lorg/apache/xml/serialize/DOMSerializerImpl;->_getXmlEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    move-object v13, v5

    if-nez v13, :cond_2

    const-string/jumbo v13, "UTF-8"

    move-object v5, v13

    :cond_2
    move-object v13, v0

    move-object v14, v3

    move-object v15, v1

    :try_start_0
    invoke-direct {v13, v14, v15}, Lorg/apache/xml/serialize/DOMSerializerImpl;->prepareForSerialization(Lorg/apache/xml/serialize/XMLSerializer;Lorg/w3c/dom/Node;)V

    move-object v13, v3

    iget-object v13, v13, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object v14, v5

    invoke-virtual {v13, v14}, Lorg/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    move-object v13, v2

    invoke-interface {v13}, Lorg/w3c/dom/ls/LSOutput;->getByteStream()Ljava/io/OutputStream;

    move-result-object v13

    move-object v6, v13

    move-object v13, v2

    invoke-interface {v13}, Lorg/w3c/dom/ls/LSOutput;->getCharacterStream()Ljava/io/Writer;

    move-result-object v13

    move-object v7, v13

    move-object v13, v2

    invoke-interface {v13}, Lorg/w3c/dom/ls/LSOutput;->getSystemId()Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    move-object v13, v7

    if-nez v13, :cond_8

    move-object v13, v6

    if-nez v13, :cond_7

    move-object v13, v8

    if-nez v13, :cond_6

    const-string/jumbo v13, "http://apache.org/xml/serializer"

    const-string/jumbo v14, "no-output-specified"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    move-object v13, v3

    iget-object v13, v13, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v13, :cond_3

    new-instance v13, Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    move-object v10, v13

    move-object v13, v10

    const-string/jumbo v14, "no-output-specified"

    iput-object v14, v13, Lorg/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    move-object v13, v10

    move-object v14, v9

    iput-object v14, v13, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    move-object v13, v10

    const/4 v14, 0x3

    iput-short v14, v13, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v13, v3

    iget-object v13, v13, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v14, v10

    invoke-interface {v13, v14}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v13

    :cond_3
    new-instance v13, Lorg/w3c/dom/ls/LSException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/16 v15, 0x52

    move-object/from16 v16, v9

    invoke-direct/range {v14 .. v16}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v13

    move-object v6, v13

    move-object v13, v3

    :try_start_1
    iget-object v13, v13, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v13, :cond_4

    new-instance v13, Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    move-object v7, v13

    move-object v13, v7

    move-object v14, v6

    iput-object v14, v13, Lorg/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    move-object v13, v7

    const-string/jumbo v14, "unsupported-encoding"

    iput-object v14, v13, Lorg/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    move-object v13, v7

    move-object v14, v6

    invoke-virtual {v14}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    move-object v13, v7

    const/4 v14, 0x3

    iput-short v14, v13, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v13, v3

    iget-object v13, v13, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v14, v7

    invoke-interface {v13, v14}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v13

    :cond_4
    new-instance v13, Lorg/w3c/dom/ls/LSException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/16 v15, 0x52

    const-string/jumbo v16, "http://apache.org/xml/serializer"

    const-string/jumbo v17, "unsupported-encoding"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v13

    move-object v11, v13

    move-object v13, v3

    invoke-virtual {v13}, Lorg/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    move-object v13, v11

    throw v13

    :cond_5
    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xml/serialize/DOMSerializerImpl;->serializer:Lorg/apache/xml/serialize/XMLSerializer;

    move-object v3, v13

    goto/16 :goto_1

    :cond_6
    move-object v13, v3

    move-object v14, v8

    :try_start_2
    invoke-static {v14}, Lorg/apache/xerces/impl/XMLEntityManager;->createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/apache/xml/serialize/XMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    :goto_2
    move-object v13, v1

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/16 v14, 0x9

    if-ne v13, v14, :cond_9

    move-object v13, v3

    move-object v14, v1

    check-cast v14, Lorg/w3c/dom/Document;

    invoke-virtual {v13, v14}, Lorg/apache/xml/serialize/XMLSerializer;->serialize(Lorg/w3c/dom/Document;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    move-object v13, v3

    invoke-virtual {v13}, Lorg/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    const/4 v13, 0x1

    move v0, v13

    goto/16 :goto_0

    :cond_7
    move-object v13, v3

    move-object v14, v6

    :try_start_3
    invoke-virtual {v13, v14}, Lorg/apache/xml/serialize/XMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_8
    move-object v13, v3

    move-object v14, v7

    invoke-virtual {v13, v14}, Lorg/apache/xml/serialize/XMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v13

    move-object v7, v13

    move-object v13, v7

    :try_start_4
    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    move-object v13, v1

    :try_start_5
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/16 v14, 0xb

    if-ne v13, v14, :cond_a

    move-object v13, v3

    move-object v14, v1

    check-cast v14, Lorg/w3c/dom/DocumentFragment;

    invoke-virtual {v13, v14}, Lorg/apache/xml/serialize/XMLSerializer;->serialize(Lorg/w3c/dom/DocumentFragment;)V

    goto :goto_3

    :cond_a
    move-object v13, v1

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    move-object v13, v3

    move-object v14, v1

    check-cast v14, Lorg/w3c/dom/Element;

    invoke-virtual {v13, v14}, Lorg/apache/xml/serialize/XMLSerializer;->serialize(Lorg/w3c/dom/Element;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_b
    const/4 v13, 0x0

    move v9, v13

    move-object v13, v3

    invoke-virtual {v13}, Lorg/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    move v13, v9

    move v0, v13

    goto/16 :goto_0

    :catch_2
    move-exception v13

    move-object v8, v13

    move-object v13, v8

    :try_start_6
    sget-object v14, Lorg/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ne v13, v14, :cond_c

    const/4 v13, 0x0

    move v9, v13

    move-object v13, v3

    invoke-virtual {v13}, Lorg/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    move v13, v9

    move v0, v13

    goto/16 :goto_0

    :cond_c
    const/16 v13, 0x52

    move-object v14, v8

    :try_start_7
    invoke-static {v13, v14}, Lorg/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object v13

    invoke-virtual {v13}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/ls/LSException;

    throw v13

    :catch_3
    move-exception v13

    move-object v9, v13

    move-object v13, v3

    iget-object v13, v13, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v13, :cond_d

    new-instance v13, Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    move-object v10, v13

    move-object v13, v10

    move-object v14, v9

    iput-object v14, v13, Lorg/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    move-object v13, v10

    move-object v14, v9

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    move-object v13, v10

    const/4 v14, 0x2

    iput-short v14, v13, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v13, v3

    iget-object v13, v13, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v14, v10

    invoke-interface {v13, v14}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v13

    :cond_d
    const/16 v13, 0x52

    move-object v14, v9

    invoke-static {v13, v14}, Lorg/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object v13

    invoke-virtual {v13}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/ls/LSException;

    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public writeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v11, 0x0

    move-object v2, v11

    move-object v11, v0

    move-object v12, v1

    invoke-direct {v11, v12}, Lorg/apache/xml/serialize/DOMSerializerImpl;->_getXmlVersion(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    move-object v11, v3

    if-eqz v11, :cond_1

    move-object v11, v3

    const-string/jumbo v12, "1.1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lorg/apache/xml/serialize/XML11Serializer;

    if-nez v11, :cond_0

    move-object v11, v0

    new-instance v12, Lorg/apache/xml/serialize/XML11Serializer;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Lorg/apache/xml/serialize/XML11Serializer;-><init>()V

    iput-object v12, v11, Lorg/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lorg/apache/xml/serialize/XML11Serializer;

    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lorg/apache/xml/serialize/XML11Serializer;

    invoke-direct {v11, v12}, Lorg/apache/xml/serialize/DOMSerializerImpl;->initSerializer(Lorg/apache/xml/serialize/XMLSerializer;)V

    :cond_0
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/DOMSerializerImpl;->serializer:Lorg/apache/xml/serialize/XMLSerializer;

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lorg/apache/xml/serialize/XML11Serializer;

    invoke-direct {v11, v12, v13}, Lorg/apache/xml/serialize/DOMSerializerImpl;->copySettings(Lorg/apache/xml/serialize/XMLSerializer;Lorg/apache/xml/serialize/XMLSerializer;)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lorg/apache/xml/serialize/XML11Serializer;

    move-object v2, v11

    :goto_0
    new-instance v11, Ljava/io/StringWriter;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    move-object v4, v11

    move-object v11, v0

    move-object v12, v2

    move-object v13, v1

    :try_start_0
    invoke-direct {v11, v12, v13}, Lorg/apache/xml/serialize/DOMSerializerImpl;->prepareForSerialization(Lorg/apache/xml/serialize/XMLSerializer;Lorg/w3c/dom/Node;)V

    move-object v11, v2

    iget-object v11, v11, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    const-string/jumbo v12, "UTF-16"

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    move-object v11, v2

    move-object v12, v4

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/XMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    move-object v11, v1

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/16 v12, 0x9

    if-ne v11, v12, :cond_2

    move-object v11, v2

    move-object v12, v1

    check-cast v12, Lorg/w3c/dom/Document;

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/XMLSerializer;->serialize(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move-object v11, v2

    invoke-virtual {v11}, Lorg/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    move-object v11, v4

    invoke-virtual {v11}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    :goto_2
    return-object v0

    :cond_1
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/DOMSerializerImpl;->serializer:Lorg/apache/xml/serialize/XMLSerializer;

    move-object v2, v11

    goto :goto_0

    :cond_2
    move-object v11, v1

    :try_start_1
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/16 v12, 0xb

    if-ne v11, v12, :cond_3

    move-object v11, v2

    move-object v12, v1

    check-cast v12, Lorg/w3c/dom/DocumentFragment;

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/XMLSerializer;->serialize(Lorg/w3c/dom/DocumentFragment;)V

    goto :goto_1

    :cond_3
    move-object v11, v1

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    move-object v11, v2

    move-object v12, v1

    check-cast v12, Lorg/w3c/dom/Element;

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/XMLSerializer;->serialize(Lorg/w3c/dom/Element;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v11, "http://apache.org/xml/serializer"

    const-string/jumbo v12, "unable-to-serialize-node"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    move-object v11, v2

    iget-object v11, v11, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v11, :cond_5

    new-instance v11, Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    move-object v6, v11

    move-object v11, v6

    const-string/jumbo v12, "unable-to-serialize-node"

    iput-object v12, v11, Lorg/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    move-object v11, v6

    move-object v12, v5

    iput-object v12, v11, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    move-object v11, v6

    const/4 v12, 0x3

    iput-short v12, v11, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v11, v2

    iget-object v11, v11, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v12, v6

    invoke-interface {v11, v12}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v11

    :cond_5
    new-instance v11, Lorg/w3c/dom/ls/LSException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/16 v13, 0x52

    move-object v14, v5

    invoke-direct {v12, v13, v14}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v11
    :try_end_1
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v11

    move-object v5, v11

    move-object v11, v5

    :try_start_2
    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v11

    move-object v9, v11

    move-object v11, v2

    invoke-virtual {v11}, Lorg/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    move-object v11, v9

    throw v11

    :catch_1
    move-exception v11

    move-object v6, v11

    move-object v11, v6

    :try_start_3
    sget-object v12, Lorg/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v11, v12, :cond_6

    const/4 v11, 0x0

    move-object v7, v11

    move-object v11, v2

    invoke-virtual {v11}, Lorg/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    move-object v11, v7

    move-object v0, v11

    goto/16 :goto_2

    :cond_6
    const/16 v11, 0x52

    move-object v12, v6

    :try_start_4
    invoke-static {v11, v12}, Lorg/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object v11

    invoke-virtual {v11}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/ls/LSException;

    throw v11

    :catch_2
    move-exception v11

    move-object v7, v11

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "STRING_TOO_LONG"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x0

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    new-instance v11, Lorg/w3c/dom/DOMException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x2

    move-object v14, v8

    invoke-direct {v12, v13, v14}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public writeToURI(Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ls/LSException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v12, v1

    if-nez v12, :cond_0

    const/4 v12, 0x0

    move v0, v12

    :goto_0
    return v0

    :cond_0
    const/4 v12, 0x0

    move-object v3, v12

    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Lorg/apache/xml/serialize/DOMSerializerImpl;->_getXmlVersion(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    move-object v12, v4

    if-eqz v12, :cond_3

    move-object v12, v4

    const-string/jumbo v13, "1.1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lorg/apache/xml/serialize/XML11Serializer;

    if-nez v12, :cond_1

    move-object v12, v0

    new-instance v13, Lorg/apache/xml/serialize/XML11Serializer;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Lorg/apache/xml/serialize/XML11Serializer;-><init>()V

    iput-object v13, v12, Lorg/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lorg/apache/xml/serialize/XML11Serializer;

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lorg/apache/xml/serialize/XML11Serializer;

    invoke-direct {v12, v13}, Lorg/apache/xml/serialize/DOMSerializerImpl;->initSerializer(Lorg/apache/xml/serialize/XMLSerializer;)V

    :cond_1
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xml/serialize/DOMSerializerImpl;->serializer:Lorg/apache/xml/serialize/XMLSerializer;

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lorg/apache/xml/serialize/XML11Serializer;

    invoke-direct {v12, v13, v14}, Lorg/apache/xml/serialize/DOMSerializerImpl;->copySettings(Lorg/apache/xml/serialize/XMLSerializer;Lorg/apache/xml/serialize/XMLSerializer;)V

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lorg/apache/xml/serialize/XML11Serializer;

    move-object v3, v12

    :goto_1
    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Lorg/apache/xml/serialize/DOMSerializerImpl;->_getInputEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    move-object v12, v5

    if-nez v12, :cond_2

    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Lorg/apache/xml/serialize/DOMSerializerImpl;->_getXmlEncoding(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    move-object v12, v5

    if-nez v12, :cond_2

    const-string/jumbo v12, "UTF-8"

    move-object v5, v12

    :cond_2
    move-object v12, v0

    move-object v13, v3

    move-object v14, v1

    :try_start_0
    invoke-direct {v12, v13, v14}, Lorg/apache/xml/serialize/DOMSerializerImpl;->prepareForSerialization(Lorg/apache/xml/serialize/XMLSerializer;Lorg/w3c/dom/Node;)V

    move-object v12, v3

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object v13, v5

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    move-object v12, v3

    move-object v13, v2

    invoke-static {v13}, Lorg/apache/xerces/impl/XMLEntityManager;->createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/XMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    move-object v12, v1

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/16 v13, 0x9

    if-ne v12, v13, :cond_4

    move-object v12, v3

    move-object v13, v1

    check-cast v13, Lorg/w3c/dom/Document;

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/XMLSerializer;->serialize(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    move-object v12, v3

    invoke-virtual {v12}, Lorg/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    const/4 v12, 0x1

    move v0, v12

    goto :goto_0

    :cond_3
    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/DOMSerializerImpl;->serializer:Lorg/apache/xml/serialize/XMLSerializer;

    move-object v3, v12

    goto :goto_1

    :cond_4
    move-object v12, v1

    :try_start_1
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/16 v13, 0xb

    if-ne v12, v13, :cond_5

    move-object v12, v3

    move-object v13, v1

    check-cast v13, Lorg/w3c/dom/DocumentFragment;

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/XMLSerializer;->serialize(Lorg/w3c/dom/DocumentFragment;)V

    goto :goto_2

    :cond_5
    move-object v12, v1

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    move-object v12, v3

    move-object v13, v1

    check-cast v13, Lorg/w3c/dom/Element;

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/XMLSerializer;->serialize(Lorg/w3c/dom/Element;)V
    :try_end_1
    .catch Lorg/w3c/dom/ls/LSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    move v6, v12

    move-object v12, v3

    invoke-virtual {v12}, Lorg/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    move v12, v6

    move v0, v12

    goto/16 :goto_0

    :catch_0
    move-exception v12

    move-object v6, v12

    move-object v12, v6

    :try_start_2
    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v12

    move-object v10, v12

    move-object v12, v3

    invoke-virtual {v12}, Lorg/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    move-object v12, v10

    throw v12

    :catch_1
    move-exception v12

    move-object v7, v12

    move-object v12, v7

    :try_start_3
    sget-object v13, Lorg/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v12, v13, :cond_7

    const/4 v12, 0x0

    move v8, v12

    move-object v12, v3

    invoke-virtual {v12}, Lorg/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    move v12, v8

    move v0, v12

    goto/16 :goto_0

    :cond_7
    const/16 v12, 0x52

    move-object v13, v7

    :try_start_4
    invoke-static {v12, v13}, Lorg/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object v12

    invoke-virtual {v12}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/ls/LSException;

    throw v12

    :catch_2
    move-exception v12

    move-object v8, v12

    move-object v12, v3

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v12, :cond_8

    new-instance v12, Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    move-object v9, v12

    move-object v12, v9

    move-object v13, v8

    iput-object v13, v12, Lorg/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    move-object v12, v9

    move-object v13, v8

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    move-object v12, v9

    const/4 v13, 0x2

    iput-short v13, v12, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v12, v3

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v13, v9

    invoke-interface {v12, v13}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v12

    :cond_8
    const/16 v12, 0x52

    move-object v13, v8

    invoke-static {v12, v13}, Lorg/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;

    move-result-object v12

    invoke-virtual {v12}, Lorg/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/ls/LSException;

    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
