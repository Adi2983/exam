.class public Lorg/apache/xml/serialize/XMLSerializer;
.super Lorg/apache/xml/serialize/BaseMarkupSerializer;


# static fields
.field protected static final DEBUG:Z = false

.field protected static final PREFIX:Ljava/lang/String; = "NS"


# instance fields
.field protected fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

.field protected fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

.field protected fNamespacePrefixes:Z

.field protected fNamespaces:Z

.field private fPreserveSpace:Z

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 8

    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lorg/apache/xml/serialize/OutputFormat;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "xml"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lorg/apache/xml/serialize/OutputFormat;)V

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    :goto_0
    invoke-direct {v3, v4}, Lorg/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lorg/apache/xml/serialize/OutputFormat;)V

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    const-string/jumbo v4, "xml"

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/XMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-void

    :cond_0
    new-instance v4, Lorg/apache/xml/serialize/OutputFormat;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "xml"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    :goto_0
    invoke-direct {v3, v4}, Lorg/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lorg/apache/xml/serialize/OutputFormat;)V

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    const-string/jumbo v4, "xml"

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/XMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-void

    :cond_0
    new-instance v4, Lorg/apache/xml/serialize/OutputFormat;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "xml"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    :goto_0
    invoke-direct {v2, v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lorg/apache/xml/serialize/OutputFormat;)V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    const-string/jumbo v3, "xml"

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v3, Lorg/apache/xml/serialize/OutputFormat;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "xml"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private extractNamespaces(Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    move-object v6, v1

    invoke-interface {v6}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    move v5, v6

    new-instance v6, Lorg/xml/sax/helpers/AttributesImpl;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-direct {v7, v8}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    move-object v2, v6

    move v6, v5

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    :goto_1
    move v6, v4

    if-gez v6, :cond_1

    move-object v6, v2

    move-object v0, v6

    goto :goto_0

    :cond_1
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Lorg/xml/sax/helpers/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    const-string/jumbo v7, "xmlns"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    move-object v6, v0

    const-string/jumbo v7, ""

    move-object v8, v1

    move v9, v4

    invoke-interface {v8, v9}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/xml/serialize/XMLSerializer;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    move-object v6, v3

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_2

    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    move v9, v4

    invoke-interface {v8, v9}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/xml/serialize/XMLSerializer;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    goto :goto_2
.end method

.method private printAttribute(Ljava/lang/String;Ljava/lang/String;ZLorg/w3c/dom/Attr;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v3

    if-nez v6, :cond_0

    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->features:S

    const/16 v7, 0x40

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_2

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v6}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v6

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    move-object v7, v4

    invoke-interface {v6, v7}, Lorg/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v6

    move v5, v6

    move v6, v5

    packed-switch v6, :pswitch_data_0

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/Printer;->printSpace()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, "=\""

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_2
    move-object v6, v1

    const-string/jumbo v7, "xml:space"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v2

    const-string/jumbo v7, "preserve"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    goto :goto_0

    :cond_4
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v7}, Lorg/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v7

    iput-boolean v7, v6, Lorg/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v3}, Lorg/apache/xml/serialize/Printer;->printSpace()V

    move-object v3, v1

    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v4, "=\""

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    return-void

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "xmlns:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkUnboundNamespacePrefixedNode(Lorg/w3c/dom/Node;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    if-eqz v8, :cond_0

    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v2, v8

    :goto_0
    move-object v8, v2

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v8, v2

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v3, v8

    move-object v8, v2

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    if-eqz v8, :cond_2

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_6

    :cond_2
    sget-object v8, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    move-object v4, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v9, v4

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    move-object v8, v4

    if-eqz v8, :cond_3

    move-object v8, v0

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "The replacement text of the entity node \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v1

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "\' contains an element node \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v2

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "\' with an undeclared prefix \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "\'."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    :cond_3
    move-object v8, v2

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    move-object v8, v2

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    move-object v5, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_2
    move v8, v6

    move-object v9, v5

    invoke-interface {v9}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    if-lt v8, v9, :cond_7

    :cond_4
    move-object v8, v2

    invoke-interface {v8}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/XMLSerializer;->checkUnboundNamespacePrefixedNode(Lorg/w3c/dom/Node;)V

    :cond_5
    move-object v8, v3

    move-object v2, v8

    goto/16 :goto_0

    :cond_6
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v9, v4

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_7
    move-object v8, v5

    move v9, v6

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    move-object v8, v7

    if-eqz v8, :cond_8

    move-object v8, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_a

    :cond_8
    sget-object v8, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_3
    move-object v7, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v9, v7

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    move-object v8, v7

    if-eqz v8, :cond_9

    move-object v8, v0

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "The replacement text of the entity node \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v1

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "\' contains an element node \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v2

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "\' with an attribute \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v5

    move v11, v6

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "\' an undeclared prefix \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "\'."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_a
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v9, v7

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xml/serialize/XMLSerializer;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    :try_start_0
    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/xml/serialize/XMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v5}, Lorg/apache/xml/serialize/Printer;->unindent()V

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xml/serialize/XMLSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    iget-boolean v5, v5, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, "/>"

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_0
    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xml/serialize/XMLSerializer;->leaveElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    move-object v5, v4

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/xml/serialize/ElementState;->afterComment:Z

    move-object v5, v4

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/xml/serialize/ElementState;->empty:Z

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v5}, Lorg/apache/xml/serialize/Printer;->flush()V

    :cond_0
    return-void

    :cond_1
    move-object v5, v4

    iget-boolean v5, v5, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, "]]>"

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_2
    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz v5, :cond_4

    move-object v5, v4

    iget-boolean v5, v5, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v5, :cond_4

    move-object v5, v4

    iget-boolean v5, v5, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v5, :cond_3

    move-object v5, v4

    iget-boolean v5, v5, Lorg/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz v5, :cond_4

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v5}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, "</"

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0
.end method

.method protected getEntityRef(I)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move v1, p1

    move v2, v1

    sparse-switch v2, :sswitch_data_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :sswitch_0
    const-string/jumbo v2, "lt"

    move-object v0, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "gt"

    move-object v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "quot"

    move-object v0, v2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "apos"

    move-object v0, v2

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "amp"

    move-object v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x26 -> :sswitch_4
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method protected printEscaped(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-lt v5, v6, :cond_0

    return-void

    :cond_0
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    move v5, v4

    invoke-static {v5}, Lorg/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    move-object v5, v0

    move v6, v4

    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "The character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move v7, v4

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, "\' is an invalid XML character"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v5, v4

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    move v5, v4

    const/16 v6, 0xd

    if-eq v5, v6, :cond_3

    move v5, v4

    const/16 v6, 0x9

    if-ne v5, v6, :cond_4

    :cond_3
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/XMLSerializer;->printHex(I)V

    goto :goto_1

    :cond_4
    move v5, v4

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, "&lt;"

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v5, v4

    const/16 v6, 0x26

    if-ne v5, v6, :cond_6

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, "&amp;"

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v5, v4

    const/16 v6, 0x22

    if-ne v5, v6, :cond_7

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, "&quot;"

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move v5, v4

    const/16 v6, 0x20

    if-lt v5, v6, :cond_8

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XMLSerializer;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    move v6, v4

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v6, v4

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_1

    :cond_8
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/XMLSerializer;->printHex(I)V

    goto/16 :goto_1
.end method

.method protected printText(Ljava/lang/String;ZZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v6, v7

    move v7, v2

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move v8, v6

    if-lt v7, v8, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v5, v7

    move v7, v5

    invoke-static {v7}, Lorg/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v7

    if-nez v7, :cond_3

    add-int/lit8 v4, v4, 0x1

    move v7, v4

    move v8, v6

    if-ge v7, v8, :cond_2

    move-object v7, v0

    move v8, v5

    move-object v9, v1

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v9, "The character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "\' is an invalid XML character"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v7, v3

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_4
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    move v4, v7

    :goto_2
    move v7, v4

    move v8, v6

    if-ge v7, v8, :cond_0

    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v5, v7

    move v7, v5

    invoke-static {v7}, Lorg/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v7

    if-nez v7, :cond_7

    add-int/lit8 v4, v4, 0x1

    move v7, v4

    move v8, v6

    if-ge v7, v8, :cond_6

    move-object v7, v0

    move v8, v5

    move-object v9, v1

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v9, "The character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "\' is an invalid XML character"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move v7, v3

    if-eqz v7, :cond_8

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_8
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    goto :goto_3
.end method

.method protected printText([CIIZZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v7, v4

    if-eqz v7, :cond_5

    :goto_0
    move v7, v3

    move v11, v7

    move v7, v11

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v3, v8

    if-gtz v7, :cond_0

    :goto_1
    return-void

    :cond_0
    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-char v7, v7, v8

    move v6, v7

    move v7, v6

    invoke-static {v7}, Lorg/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v7

    if-nez v7, :cond_2

    move v7, v3

    move v11, v7

    move v7, v11

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v3, v8

    if-lez v7, :cond_1

    move-object v7, v0

    move v8, v6

    move-object v9, v1

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    aget-char v9, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    goto :goto_0

    :cond_1
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v9, "The character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "\' is an invalid XML character"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v7, v5

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v8, v6

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    :cond_3
    move-object v7, v0

    move v8, v6

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    goto :goto_0

    :cond_4
    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-char v7, v7, v8

    move v6, v7

    move v7, v6

    invoke-static {v7}, Lorg/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v7

    if-nez v7, :cond_7

    move v7, v3

    move v11, v7

    move v7, v11

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v3, v8

    if-lez v7, :cond_6

    move-object v7, v0

    move v8, v6

    move-object v9, v1

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    aget-char v9, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    :cond_5
    :goto_2
    move v7, v3

    move v11, v7

    move v7, v11

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v3, v8

    if-gtz v7, :cond_4

    goto/16 :goto_1

    :cond_6
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v9, "The character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "\' is an invalid XML character"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move v7, v5

    if-eqz v7, :cond_8

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v8, v6

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_8
    move-object v7, v0

    move v8, v6

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    goto :goto_2
.end method

.method protected printXMLChar(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/XMLSerializer;->printHex(I)V

    :goto_0
    return-void

    :cond_0
    move v2, v1

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v3, "&lt;"

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v2, v1

    const/16 v3, 0x26

    if-ne v2, v3, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v3, "&amp;"

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v2, v1

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v3, "&gt;"

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v2, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    move v2, v1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_4

    move v2, v1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_5

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/XMLSerializer;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    move v3, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v3, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    :cond_5
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/XMLSerializer;->printHex(I)V

    goto :goto_0
.end method

.method public reset()Z
    .locals 4

    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    move-result v1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v1}, Lorg/apache/xerces/util/NamespaceSupport;->reset()V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    sget-object v2, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method protected serializeElement(Lorg/w3c/dom/Element;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/util/NamespaceSupport;->reset()V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    :cond_0
    move-object/from16 v20, v3

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v11, v20

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/serialize/XMLSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v20

    move-object/from16 v8, v20

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_started:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    move-object/from16 v20, v2

    move-object/from16 v21, v11

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    :cond_1
    :goto_0
    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lorg/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    const/16 v20, 0x0

    move/from16 v15, v20

    const/16 v20, 0x0

    move-object/from16 v5, v20

    move-object/from16 v20, v3

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v20, v3

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v20

    move-object/from16 v5, v20

    move-object/from16 v20, v5

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v20

    move/from16 v15, v20

    :cond_2
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v20, v0

    const/16 v21, 0x3c

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v20, v0

    move-object/from16 v21, v11

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/serialize/Printer;->indent()V

    const/16 v20, 0x0

    move/from16 v6, v20

    :goto_1
    move/from16 v20, v6

    move/from16 v21, v15

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    :cond_3
    move-object/from16 v20, v3

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v20

    if-eqz v20, :cond_31

    move-object/from16 v20, v2

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v11

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    move/from16 v24, v0

    invoke-virtual/range {v20 .. v24}, Lorg/apache/xml/serialize/XMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serialize/ElementState;

    move-result-object v20

    move-object/from16 v8, v20

    move-object/from16 v20, v8

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object/from16 v21, v0

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Lorg/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    move-object/from16 v20, v8

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object/from16 v21, v0

    move-object/from16 v22, v11

    invoke-virtual/range {v21 .. v22}, Lorg/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lorg/apache/xml/serialize/ElementState;->unescaped:Z

    move-object/from16 v20, v3

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v20

    move-object/from16 v7, v20

    :goto_2
    move-object/from16 v20, v7

    if-nez v20, :cond_30

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/util/NamespaceSupport;->popContext()V

    :cond_4
    move-object/from16 v20, v2

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v11

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xml/serialize/XMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/ElementState;->empty:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v20, v0

    const/16 v21, 0x3e

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_7
    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v20, v0

    const-string/jumbo v21, "]]>"

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v20, v8

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    :cond_8
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_indenting:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/ElementState;->empty:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/ElementState;->afterComment:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    :cond_9
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v20, v5

    move/from16 v21, v6

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Attr;

    move-object/from16 v4, v20

    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v9, v20

    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v10, v20

    move-object/from16 v20, v10

    if-nez v20, :cond_b

    const-string/jumbo v20, ""

    move-object/from16 v10, v20

    :cond_b
    move-object/from16 v20, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v4

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v23

    move-object/from16 v24, v4

    invoke-direct/range {v20 .. v24}, Lorg/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLorg/w3c/dom/Attr;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_c
    const/16 v20, 0x0

    move/from16 v6, v20

    :goto_4
    move/from16 v20, v6

    move/from16 v21, v15

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_14

    move-object/from16 v20, v3

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v14, v20

    move-object/from16 v20, v3

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v12, v20

    move-object/from16 v20, v14

    if-eqz v20, :cond_1b

    move-object/from16 v20, v12

    if-eqz v20, :cond_1b

    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1b

    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_1b

    const/16 v20, 0x0

    move-object/from16 v12, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v20, v0

    const/16 v21, 0x3c

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/serialize/Printer;->indent()V

    :goto_5
    move-object/from16 v20, v14

    if-eqz v20, :cond_1f

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v21, v14

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v14, v20

    move-object/from16 v20, v12

    if-eqz v20, :cond_d

    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1c

    :cond_d
    sget-object v20, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_6
    move-object/from16 v12, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v14

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1d

    :cond_e
    :goto_7
    const/16 v20, 0x0

    move/from16 v6, v20

    :goto_8
    move/from16 v20, v6

    move/from16 v21, v15

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    move-object/from16 v20, v5

    move/from16 v21, v6

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Attr;

    move-object/from16 v4, v20

    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v10, v20

    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v9, v20

    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v14, v20

    move-object/from16 v20, v14

    if-eqz v20, :cond_f

    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_f

    const/16 v20, 0x0

    move-object/from16 v14, v20

    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v9, v20

    :cond_f
    move-object/from16 v20, v10

    if-nez v20, :cond_10

    sget-object v20, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v10, v20

    :cond_10
    move-object/from16 v20, v14

    if-eqz v20, :cond_2d

    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v12, v20

    move-object/from16 v20, v12

    if-nez v20, :cond_22

    sget-object v20, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_9
    move-object/from16 v12, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v20

    move-object/from16 v20, v14

    if-eqz v20, :cond_25

    move-object/from16 v20, v14

    sget-object v21, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_25

    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v12, v20

    move-object/from16 v20, v12

    if-eqz v20, :cond_11

    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_23

    :cond_11
    sget-object v20, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_a
    move-object/from16 v12, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v20

    move-object/from16 v20, v12

    sget-object v21, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_24

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    move-object/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v13, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v10, v20

    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_13

    move-object/from16 v20, v13

    if-nez v20, :cond_13

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v20, v2

    move-object/from16 v21, v16

    move-object/from16 v22, v10

    invoke-direct/range {v20 .. v22}, Lorg/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    move-object/from16 v21, v16

    move-object/from16 v22, v10

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    :cond_13
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    :cond_14
    move-object/from16 v20, v5

    move/from16 v21, v6

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Attr;

    move-object/from16 v4, v20

    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v14, v20

    move-object/from16 v20, v14

    if-eqz v20, :cond_18

    move-object/from16 v20, v14

    sget-object v21, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v10, v20

    move-object/from16 v20, v10

    if-nez v20, :cond_15

    sget-object v20, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v10, v20

    :cond_15
    move-object/from16 v20, v10

    sget-object v21, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_18

    const-string/jumbo v20, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v21, "CantBindXMLNS"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v20

    move-object/from16 v20, v2

    move-object/from16 v21, v16

    const/16 v22, 0x2

    const/16 v23, 0x0

    move-object/from16 v24, v4

    invoke-virtual/range {v20 .. v24}, Lorg/apache/xml/serialize/XMLSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    move-result-object v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v20

    move/from16 v17, v20

    move/from16 v20, v17

    if-nez v20, :cond_18

    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const-string/jumbo v22, "http://apache.org/xml/serializer"

    const-string/jumbo v23, "SerializationStopped"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_16
    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v12, v20

    move-object/from16 v20, v12

    if-eqz v20, :cond_17

    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_19

    :cond_17
    sget-object v20, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_c
    move-object/from16 v12, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v20

    move-object/from16 v20, v12

    sget-object v21, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1a

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v10, v20

    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_18

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    move-object/from16 v21, v16

    move-object/from16 v22, v10

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    :cond_18
    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_19
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto :goto_c

    :cond_1a
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v10, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    sget-object v21, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v22, v10

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    goto :goto_d

    :cond_1b
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v20, v0

    const/16 v21, 0x3c

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v20, v0

    move-object/from16 v21, v11

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/serialize/Printer;->indent()V

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1e

    move-object/from16 v20, v2

    move-object/from16 v21, v12

    move-object/from16 v22, v14

    invoke-direct/range {v20 .. v22}, Lorg/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    move-object/from16 v22, v14

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    move-object/from16 v22, v14

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    goto/16 :goto_7

    :cond_1f
    move-object/from16 v20, v3

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    const-string/jumbo v20, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v21, "NullLocalElementName"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    const/16 v24, 0x0

    move-object/from16 v25, v3

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v20 .. v22}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v20

    move-object/from16 v20, v2

    move-object/from16 v21, v16

    const/16 v22, 0x2

    const/16 v23, 0x0

    move-object/from16 v24, v3

    invoke-virtual/range {v20 .. v24}, Lorg/apache/xml/serialize/XMLSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    move-result-object v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v20

    move/from16 v17, v20

    move/from16 v20, v17

    if-nez v20, :cond_e

    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const-string/jumbo v22, "http://apache.org/xml/serializer"

    const-string/jumbo v23, "SerializationStopped"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_20
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    sget-object v21, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v14, v20

    move-object/from16 v20, v14

    if-eqz v20, :cond_e

    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_e

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move/from16 v20, v0

    if-eqz v20, :cond_21

    move-object/from16 v20, v2

    sget-object v21, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v22, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-direct/range {v20 .. v22}, Lorg/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    sget-object v21, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v22, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    sget-object v21, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v22, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    goto/16 :goto_7

    :cond_22
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_9

    :cond_23
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_a

    :cond_24
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    sget-object v21, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v14, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    sget-object v21, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v13, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v10, v20

    move-object/from16 v20, v13

    if-nez v20, :cond_13

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v20, v2

    sget-object v21, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v22, v10

    invoke-direct/range {v20 .. v22}, Lorg/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_25
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v21, v14

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v14, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, v20

    move-object/from16 v20, v12

    sget-object v21, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_26

    move-object/from16 v20, v17

    move-object/from16 v21, v14

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_27

    :cond_26
    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v9, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    move-object/from16 v21, v14

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v20

    move-object/from16 v20, v18

    if-eqz v20, :cond_28

    move-object/from16 v20, v18

    sget-object v21, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_28

    move-object/from16 v20, v18

    move-object/from16 v12, v20

    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v9, v20

    :cond_27
    :goto_e
    move-object/from16 v20, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    if-nez v22, :cond_2c

    sget-object v22, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_f
    move-object/from16 v23, v4

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v23

    move-object/from16 v24, v4

    invoke-direct/range {v20 .. v24}, Lorg/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLorg/w3c/dom/Attr;)V

    goto/16 :goto_b

    :cond_28
    move-object/from16 v20, v12

    sget-object v21, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_2a

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_2a

    :goto_10
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move/from16 v20, v0

    if-eqz v20, :cond_29

    move-object/from16 v20, v2

    move-object/from16 v21, v12

    move-object/from16 v22, v14

    invoke-direct/range {v20 .. v22}, Lorg/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v10, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    move-object/from16 v22, v10

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    move-object/from16 v22, v14

    invoke-virtual/range {v20 .. v22}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    goto :goto_e

    :cond_2a
    const/16 v20, 0x1

    move/from16 v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v22, "NS"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move/from16 v22, v19

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v12, v20

    :goto_11
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_2b

    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v9, v20

    goto/16 :goto_10

    :cond_2b
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuffer;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v22, "NS"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move/from16 v22, v19

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v12, v20

    goto :goto_11

    :cond_2c
    move-object/from16 v22, v10

    goto/16 :goto_f

    :cond_2d
    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_2f

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2e

    const-string/jumbo v20, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v21, "NullLocalAttrName"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    const/16 v24, 0x0

    move-object/from16 v25, v4

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v20 .. v22}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v16, v20

    move-object/from16 v20, v2

    move-object/from16 v21, v16

    const/16 v22, 0x2

    const/16 v23, 0x0

    move-object/from16 v24, v4

    invoke-virtual/range {v20 .. v24}, Lorg/apache/xml/serialize/XMLSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    move-result-object v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v20

    move/from16 v17, v20

    move/from16 v20, v17

    if-nez v20, :cond_2e

    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const-string/jumbo v22, "http://apache.org/xml/serializer"

    const-string/jumbo v23, "SerializationStopped"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_2e
    move-object/from16 v20, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v4

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v23

    move-object/from16 v24, v4

    invoke-direct/range {v20 .. v24}, Lorg/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLorg/w3c/dom/Attr;)V

    goto/16 :goto_b

    :cond_2f
    move-object/from16 v20, v2

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v4

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v23

    move-object/from16 v24, v4

    invoke-direct/range {v20 .. v24}, Lorg/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLorg/w3c/dom/Attr;)V

    goto/16 :goto_b

    :cond_30
    move-object/from16 v20, v2

    move-object/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xml/serialize/XMLSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    move-object/from16 v20, v7

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v20

    move-object/from16 v7, v20

    goto/16 :goto_2

    :cond_31
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move/from16 v20, v0

    if-eqz v20, :cond_32

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xerces/util/NamespaceSupport;->popContext()V

    :cond_32
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/serialize/Printer;->unindent()V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v20, v0

    const-string/jumbo v21, "/>"

    invoke-virtual/range {v20 .. v21}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v20, v8

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    move-object/from16 v20, v8

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lorg/apache/xml/serialize/ElementState;->afterComment:Z

    move-object/from16 v20, v8

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lorg/apache/xml/serialize/ElementState;->empty:Z

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/xml/serialize/Printer;->flush()V

    goto/16 :goto_3
.end method

.method public setNamespaces(Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    if-nez v2, :cond_0

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/NamespaceSupport;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v3, v2, Lorg/apache/xml/serialize/XMLSerializer;->fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/NamespaceSupport;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v3, v2, Lorg/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v3, v2, Lorg/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    :cond_0
    return-void
.end method

.method public setOutputFormat(Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    :goto_0
    invoke-super {v2, v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->setOutputFormat(Lorg/apache/xml/serialize/OutputFormat;)V

    return-void

    :cond_0
    new-instance v3, Lorg/apache/xml/serialize/OutputFormat;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "xml"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected startDocument(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/Printer;->leaveDTD()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_started:Z

    if-nez v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/OutputFormat;->getOmitXMLDeclaration()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "<?xml version=\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/OutputFormat;->getVersion()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v7}, Lorg/apache/xml/serialize/OutputFormat;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    :goto_0
    move-object v6, v4

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v4

    const-string/jumbo v7, " encoding=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v6, v4

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/OutputFormat;->getStandalone()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-nez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-nez v6, :cond_1

    move-object v6, v4

    const-string/jumbo v7, " standalone=\"yes\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    :cond_1
    move-object v6, v4

    const-string/jumbo v7, "?>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/StringBuffer;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/OutputFormat;->getOmitDocumentType()Z

    move-result v6

    if-nez v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz v6, :cond_9

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, "<!DOCTYPE "

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-eqz v6, :cond_8

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, " PUBLIC "

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XMLSerializer;->_docTypePublicId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/XMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz v6, :cond_7

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    const/4 v6, 0x0

    move v2, v6

    :goto_1
    move v6, v2

    const/16 v7, 0x12

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    if-lt v6, v7, :cond_6

    :goto_2
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/XMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :goto_3
    move-object v6, v3

    if-eqz v6, :cond_3

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, " ["

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xml/serialize/XMLSerializer;->printText(Ljava/lang/String;ZZ)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, ">"

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    :cond_4
    :goto_4
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xml/serialize/XMLSerializer;->_started:Z

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xml/serialize/XMLSerializer;->serializePreRoot()V

    return-void

    :cond_5
    move-object v6, v4

    const-string/jumbo v7, "1.0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    goto/16 :goto_0

    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, " SYSTEM "

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/XMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object v6, v3

    if-eqz v6, :cond_4

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, "<!DOCTYPE "

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, " ["

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xml/serialize/XMLSerializer;->printText(Ljava/lang/String;ZZ)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, "]>"

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_4
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v12, v0

    :try_start_0
    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    if-nez v12, :cond_0

    const-string/jumbo v12, "http://apache.org/xml/serializer"

    const-string/jumbo v13, "NoWriterSupplied"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v10

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v12

    move-object v10, v12

    new-instance v12, Lorg/xml/sax/SAXException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v10

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v12

    :cond_0
    move-object v12, v0

    :try_start_1
    invoke-virtual {v12}, Lorg/apache/xml/serialize/XMLSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v12

    move-object v7, v12

    move-object v12, v0

    invoke-virtual {v12}, Lorg/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v12, v0

    iget-boolean v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_started:Z

    if-nez v12, :cond_2

    move-object v12, v0

    move-object v13, v2

    if-eqz v13, :cond_1

    move-object v13, v2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_4

    :cond_1
    move-object v13, v3

    :goto_0
    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object v12, v7

    iget-boolean v12, v12, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    move v6, v12

    move-object v12, v0

    move-object v13, v4

    invoke-direct {v12, v13}, Lorg/apache/xml/serialize/XMLSerializer;->extractNamespaces(Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;

    move-result-object v12

    move-object v4, v12

    move-object v12, v3

    if-eqz v12, :cond_3

    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_a

    :cond_3
    move-object v12, v2

    if-nez v12, :cond_9

    const-string/jumbo v12, "http://apache.org/xml/serializer"

    const-string/jumbo v13, "NoName"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    new-instance v12, Lorg/xml/sax/SAXException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v10

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_4
    move-object v13, v2

    goto :goto_0

    :cond_5
    move-object v12, v7

    iget-boolean v12, v12, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v12, :cond_6

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v13, 0x3e

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_6
    move-object v12, v7

    iget-boolean v12, v12, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v12, :cond_7

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v13, "]]>"

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v12, v7

    const/4 v13, 0x0

    iput-boolean v13, v12, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    :cond_7
    move-object v12, v0

    iget-boolean v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz v12, :cond_2

    move-object v12, v7

    iget-boolean v12, v12, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v12, :cond_2

    move-object v12, v7

    iget-boolean v12, v12, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-nez v12, :cond_8

    move-object v12, v7

    iget-boolean v12, v12, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v12, :cond_8

    move-object v12, v7

    iget-boolean v12, v12, Lorg/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz v12, :cond_2

    :cond_8
    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v12}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_1

    :cond_9
    move-object v12, v1

    if-eqz v12, :cond_f

    move-object v12, v1

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/XMLSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object v12, v10

    if-eqz v12, :cond_e

    move-object v12, v10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_e

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v3, v12

    :cond_a
    :goto_2
    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v13, 0x3c

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v13, v3

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v12}, Lorg/apache/xml/serialize/Printer;->indent()V

    move-object v12, v4

    if-eqz v12, :cond_b

    const/4 v12, 0x0

    move v5, v12

    :goto_3
    move v12, v5

    move-object v13, v4

    invoke-interface {v13}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v13

    if-lt v12, v13, :cond_10

    :cond_b
    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_prefixes:Ljava/util/Hashtable;

    if-eqz v12, :cond_c

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_prefixes:Ljava/util/Hashtable;

    invoke-virtual {v12}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v10, v12

    :goto_4
    move-object v12, v10

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_16

    :cond_c
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move/from16 v16, v6

    invoke-virtual/range {v12 .. v16}, Lorg/apache/xml/serialize/XMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serialize/ElementState;

    move-result-object v12

    move-object v7, v12

    move-object v12, v2

    if-eqz v12, :cond_d

    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_18

    :cond_d
    move-object v12, v3

    :goto_5
    move-object v8, v12

    move-object v12, v7

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object v14, v8

    invoke-virtual {v13, v14}, Lorg/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v12, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    move-object v12, v7

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object v14, v8

    invoke-virtual {v13, v14}, Lorg/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v12, Lorg/apache/xml/serialize/ElementState;->unescaped:Z

    return-void

    :cond_e
    move-object v12, v2

    move-object v3, v12

    goto :goto_2

    :cond_f
    move-object v12, v2

    move-object v3, v12

    goto :goto_2

    :cond_10
    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v12}, Lorg/apache/xml/serialize/Printer;->printSpace()V

    move-object v12, v4

    move v13, v5

    invoke-interface {v12, v13}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    move-object v12, v8

    if-eqz v12, :cond_12

    move-object v12, v8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_12

    move-object v12, v4

    move v13, v5

    invoke-interface {v12, v13}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    move-object v12, v4

    move v13, v5

    invoke-interface {v12, v13}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    move-object v12, v11

    if-eqz v12, :cond_12

    move-object v12, v11

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_12

    move-object v12, v1

    if-eqz v12, :cond_11

    move-object v12, v1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_11

    move-object v12, v11

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    :cond_11
    move-object v12, v0

    move-object v13, v11

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/XMLSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object v12, v10

    if-eqz v12, :cond_12

    move-object v12, v10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_12

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    :cond_12
    move-object v12, v4

    move v13, v5

    invoke-interface {v12, v13}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    move-object v12, v9

    if-nez v12, :cond_13

    const-string/jumbo v12, ""

    move-object v9, v12

    :cond_13
    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v13, v8

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v13, "=\""

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v12, v0

    move-object v13, v9

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v13, 0x22

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v12, v8

    const-string/jumbo v13, "xml:space"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    move-object v12, v9

    const-string/jumbo v13, "preserve"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    const/4 v12, 0x1

    move v6, v12

    :cond_14
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_15
    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v12}, Lorg/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v12

    move v6, v12

    goto :goto_6

    :cond_16
    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v12}, Lorg/apache/xml/serialize/Printer;->printSpace()V

    move-object v12, v10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    move-object v11, v12

    move-object v12, v11

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v9, v12

    move-object v12, v11

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v8, v12

    move-object v12, v8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_17

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v13, "xmlns=\""

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v12, v0

    move-object v13, v9

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v13, 0x22

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_4

    :cond_17
    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v13, "xmlns:"

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v13, v8

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v13, "=\""

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v12, v0

    move-object v13, v9

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v13, 0x22

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_4

    :cond_18
    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, "^"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto/16 :goto_5
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    if-nez v9, :cond_0

    const-string/jumbo v9, "http://apache.org/xml/serializer"

    const-string/jumbo v10, "NoWriterSupplied"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v8

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v9

    move-object v8, v9

    new-instance v9, Lorg/xml/sax/SAXException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v8

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v9

    :cond_0
    move-object v9, v0

    :try_start_1
    invoke-virtual {v9}, Lorg/apache/xml/serialize/XMLSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v9

    move-object v5, v9

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v0

    iget-boolean v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_started:Z

    if-nez v9, :cond_1

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    :cond_1
    :goto_0
    move-object v9, v5

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    move v4, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v10, 0x3c

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v9}, Lorg/apache/xml/serialize/Printer;->indent()V

    move-object v9, v2

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    move v3, v9

    :goto_1
    move v9, v3

    move-object v10, v2

    invoke-interface {v10}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v10

    if-lt v9, v10, :cond_7

    :cond_2
    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v12, v1

    move v13, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/apache/xml/serialize/XMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serialize/ElementState;

    move-result-object v9

    move-object v5, v9

    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object v11, v1

    invoke-virtual {v10, v11}, Lorg/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v9, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object v11, v1

    invoke-virtual {v10, v11}, Lorg/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v9, Lorg/apache/xml/serialize/ElementState;->unescaped:Z

    return-void

    :cond_3
    move-object v9, v5

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v9, :cond_4

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_4
    move-object v9, v5

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v9, :cond_5

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v10, "]]>"

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v5

    const/4 v10, 0x0

    iput-boolean v10, v9, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    :cond_5
    move-object v9, v0

    iget-boolean v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz v9, :cond_1

    move-object v9, v5

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v9, :cond_1

    move-object v9, v5

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-nez v9, :cond_6

    move-object v9, v5

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v9, :cond_6

    move-object v9, v5

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz v9, :cond_1

    :cond_6
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v9}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    goto/16 :goto_0

    :cond_7
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v9}, Lorg/apache/xml/serialize/Printer;->printSpace()V

    move-object v9, v2

    move v10, v3

    invoke-interface {v9, v10}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    move-object v9, v2

    move v10, v3

    invoke-interface {v9, v10}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    move-object v9, v7

    if-eqz v9, :cond_8

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v10, v6

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v10, "=\""

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_8
    move-object v9, v6

    const-string/jumbo v10, "xml:space"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v9, v7

    const-string/jumbo v10, "preserve"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    move v4, v9

    :cond_9
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_a
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v9}, Lorg/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    move v4, v9

    goto :goto_2
.end method
