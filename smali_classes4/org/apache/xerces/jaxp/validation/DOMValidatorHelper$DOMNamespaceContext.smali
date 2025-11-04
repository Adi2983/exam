.class final Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DOMNamespaceContext"
.end annotation


# instance fields
.field protected fDOMContextBuilt:Z

.field protected fNamespace:[Ljava/lang/String;

.field protected fNamespaceSize:I

.field private final this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;


# direct methods
.method constructor <init>(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    move-object v2, v0

    const/16 v3, 0x20

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fDOMContextBuilt:Z

    return-void
.end method

.method private declarePrefix0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    array-length v5, v5

    if-ne v4, v5, :cond_0

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    move-object v6, v2

    aput-object v6, v4, v5

    return-void
.end method

.method private fillNamespaceContext()V
    .locals 11

    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$100(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$100(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v1, v7

    :goto_0
    move-object v7, v1

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v7, 0x1

    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v7, v8, :cond_2

    move-object v7, v1

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    move-object v2, v7

    move-object v7, v2

    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    move v3, v7

    const/4 v7, 0x0

    move v4, v7

    :goto_1
    move v7, v4

    move v8, v3

    if-lt v7, v8, :cond_3

    :cond_2
    move-object v7, v1

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v1, v7

    goto :goto_0

    :cond_3
    move-object v7, v2

    move v8, v4

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Attr;

    move-object v5, v7

    move-object v7, v5

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    if-nez v7, :cond_4

    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v6, v7

    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object v9, v5

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$200(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;Lorg/apache/xerces/xni/QName;Lorg/w3c/dom/Node;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v8, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v7, v8, :cond_5

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v8, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v7, v8, :cond_7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v9}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$300(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lorg/apache/xerces/util/SymbolTable;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->declarePrefix0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    move-object v7, v0

    sget-object v8, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v9}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$300(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lorg/apache/xerces/util/SymbolTable;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->declarePrefix0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    goto :goto_4
.end method

.method private getURI0(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    move-object v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v3}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$000(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v1}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$000(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xerces/util/NamespaceSupport;->getAllPrefixes()Ljava/util/Enumeration;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getDeclaredPrefixAt(I)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v2}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$000(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/NamespaceSupport;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getDeclaredPrefixCount()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v1}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$000(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xerces/util/NamespaceSupport;->getDeclaredPrefixCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v2}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$000(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v3}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$000(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fDOMContextBuilt:Z

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-direct {v3}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fillNamespaceContext()V

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fDOMContextBuilt:Z

    :cond_0
    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    if-lez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v3}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$000(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/NamespaceSupport;->containsPrefix(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->getURI0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    :cond_1
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public popContext()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v1}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$000(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xerces/util/NamespaceSupport;->popContext()V

    return-void
.end method

.method public pushContext()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v1}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$000(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lorg/apache/xerces/util/NamespaceSupport;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    return-void
.end method

.method public reset()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fDOMContextBuilt:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    return-void
.end method
