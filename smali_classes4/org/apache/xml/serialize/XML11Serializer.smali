.class public Lorg/apache/xml/serialize/XML11Serializer;
.super Lorg/apache/xml/serialize/XMLSerializer;


# static fields
.field protected static final DEBUG:Z = false

.field protected static final PREFIX:Ljava/lang/String; = "NS"


# instance fields
.field protected fDOML1:Z

.field protected fLocalNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

.field protected fNSBinder:Lorg/apache/xerces/util/NamespaceSupport;

.field protected fNamespaceCounter:I

.field protected fNamespaces:Z

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xml/serialize/XMLSerializer;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lorg/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/XML11Serializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    const-string/jumbo v2, "1.1"

    invoke-virtual {v1, v2}, Lorg/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    :goto_0
    invoke-direct {v3, v4, v5}, Lorg/apache/xml/serialize/XMLSerializer;-><init>(Ljava/io/OutputStream;Lorg/apache/xml/serialize/OutputFormat;)V

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lorg/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/XML11Serializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    const-string/jumbo v4, "1.1"

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v5, Lorg/apache/xml/serialize/OutputFormat;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "xml"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xml/serialize/XMLSerializer;-><init>(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)V

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lorg/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/XML11Serializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    const-string/jumbo v4, "1.1"

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xml/serialize/XMLSerializer;-><init>(Lorg/apache/xml/serialize/OutputFormat;)V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lorg/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/XML11Serializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    const-string/jumbo v3, "1.1"

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    :try_start_0
    invoke-virtual {v9}, Lorg/apache/xml/serialize/XML11Serializer;->content()Lorg/apache/xml/serialize/ElementState;

    move-result-object v9

    move-object v4, v9

    move-object v9, v4

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v9, :cond_0

    move-object v9, v4

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    if-eqz v9, :cond_7

    :cond_0
    move-object v9, v4

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v10, "<![CDATA["

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v4

    const/4 v10, 0x1

    iput-boolean v10, v9, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v9}, Lorg/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v9

    move v5, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->setNextIndent(I)V

    move v9, v2

    move v10, v3

    add-int/2addr v9, v10

    move v7, v9

    move v9, v2

    move v8, v9

    :goto_0
    move v9, v8

    move v10, v7

    if-lt v9, v10, :cond_2

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v10, v5

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->setNextIndent(I)V

    :goto_1
    return-void

    :cond_2
    move-object v9, v1

    move v10, v8

    aget-char v9, v9, v10

    move v6, v9

    move v9, v6

    const/16 v10, 0x5d

    if-ne v9, v10, :cond_3

    move v9, v8

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    move v10, v7

    if-ge v9, v10, :cond_3

    move-object v9, v1

    move v10, v8

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-char v9, v9, v10

    const/16 v10, 0x5d

    if-ne v9, v10, :cond_3

    move-object v9, v1

    move v10, v8

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    aget-char v9, v9, v10

    const/16 v10, 0x3e

    if-ne v9, v10, :cond_3

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v10, "]]]]><![CDATA[>"

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x2

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move v9, v6

    invoke-static {v9}, Lorg/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v9

    if-nez v9, :cond_5

    add-int/lit8 v8, v8, 0x1

    move v9, v8

    move v10, v7

    if-ge v9, v10, :cond_4

    move-object v9, v0

    move v10, v6

    move-object v11, v1

    move v12, v8

    aget-char v11, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    goto :goto_2

    :cond_4
    move-object v9, v0

    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v11, "The character \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string/jumbo v11, "\' is an invalid XML character"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    move v10, v6

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v6

    invoke-static {v9}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v10, v6

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_6
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v10, "]]>&#x"

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v10, ";<![CDATA["

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    move-object v5, v9

    new-instance v9, Lorg/xml/sax/SAXException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v5

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v9

    :cond_7
    move-object v9, v4

    :try_start_1
    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-eqz v9, :cond_8

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v9}, Lorg/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v9

    move v5, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->setNextIndent(I)V

    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    const/4 v13, 0x1

    move-object v14, v4

    iget-boolean v14, v14, Lorg/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-virtual/range {v9 .. v14}, Lorg/apache/xml/serialize/XML11Serializer;->printText([CIIZZ)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v10, v5

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->setNextIndent(I)V

    goto/16 :goto_1

    :cond_8
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    const/4 v13, 0x0

    move-object v14, v4

    iget-boolean v14, v14, Lorg/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-virtual/range {v9 .. v14}, Lorg/apache/xml/serialize/XML11Serializer;->printText([CIIZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected final printCDATAText(Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v2, v7

    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move v8, v2

    if-lt v7, v8, :cond_0

    return-void

    :cond_0
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v3, v7

    move v7, v3

    const/16 v8, 0x5d

    if-ne v7, v8, :cond_3

    move v7, v4

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v8, v2

    if-ge v7, v8, :cond_3

    move-object v7, v1

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5d

    if-ne v7, v8, :cond_3

    move-object v7, v1

    move v8, v4

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3e

    if-ne v7, v8, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XML11Serializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xml/serialize/XML11Serializer;->features:S

    const/16 v8, 0x10

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_1

    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xml/serialize/XML11Serializer;->features:S

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_1

    const-string/jumbo v7, "http://apache.org/xml/serializer"

    const-string/jumbo v8, "EndingCDATA"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v0

    move-object v8, v5

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/XML11Serializer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v7, v8, v9, v10, v11}, Lorg/apache/xml/serialize/XML11Serializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XML11Serializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/XML11Serializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v7, v8}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v7

    move v6, v7

    move v7, v6

    if-nez v7, :cond_2

    new-instance v7, Ljava/io/IOException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v7

    :cond_1
    const-string/jumbo v7, "http://apache.org/xml/serializer"

    const-string/jumbo v8, "SplittingCDATA"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v0

    move-object v8, v5

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/XML11Serializer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v7, v8, v9, v10, v11}, Lorg/apache/xml/serialize/XML11Serializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XML11Serializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/XML11Serializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v7, v8}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v7

    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v8, "]]]]><![CDATA[>"

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    move v7, v3

    invoke-static {v7}, Lorg/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v7

    if-nez v7, :cond_5

    add-int/lit8 v4, v4, 0x1

    move v7, v4

    move v8, v2

    if-ge v7, v8, :cond_4

    move-object v7, v0

    move v8, v3

    move-object v9, v1

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    goto :goto_1

    :cond_4
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v9, "The character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "\' is an invalid XML character"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    move v8, v3

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v3

    invoke-static {v7}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v8, v3

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_6
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v8, "]]>&#x"

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v8, ";<![CDATA["

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1
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

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

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

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

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

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

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

    if-eq v5, v6, :cond_3

    move v5, v4

    const/16 v6, 0x85

    if-eq v5, v6, :cond_3

    move v5, v4

    const/16 v6, 0x2028

    if-ne v5, v6, :cond_4

    :cond_3
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/XML11Serializer;->printHex(I)V

    goto :goto_1

    :cond_4
    move v5, v4

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, "&lt;"

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v5, v4

    const/16 v6, 0x26

    if-ne v5, v6, :cond_6

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, "&amp;"

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v5, v4

    const/16 v6, 0x22

    if-ne v5, v6, :cond_7

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, "&quot;"

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move v5, v4

    const/16 v6, 0x20

    if-lt v5, v6, :cond_8

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    move v6, v4

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v6, v4

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_1

    :cond_8
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/XML11Serializer;->printHex(I)V

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

    invoke-static {v7}, Lorg/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

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

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

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

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v7, v3

    if-eqz v7, :cond_4

    move v7, v5

    invoke-static {v7}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_4
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

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

    invoke-static {v7}, Lorg/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

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

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

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

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move v7, v3

    if-eqz v7, :cond_8

    move v7, v5

    invoke-static {v7}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_8
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

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

    invoke-static {v7}, Lorg/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

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

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

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

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v7, v5

    if-eqz v7, :cond_3

    move v7, v6

    invoke-static {v7}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v8, v6

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    :cond_3
    move-object v7, v0

    move v8, v6

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

    goto :goto_0

    :cond_4
    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-char v7, v7, v8

    move v6, v7

    move v7, v6

    invoke-static {v7}, Lorg/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

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

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

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

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move v7, v5

    if-eqz v7, :cond_8

    move v7, v6

    invoke-static {v7}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v8, v6

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_8
    move-object v7, v0

    move v8, v6

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

    goto :goto_2
.end method

.method protected final printXMLChar(I)V
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

    if-eq v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0x85

    if-eq v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0x2028

    if-ne v2, v3, :cond_1

    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/XML11Serializer;->printHex(I)V

    :goto_0
    return-void

    :cond_1
    move v2, v1

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v3, "&lt;"

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v2, v1

    const/16 v3, 0x26

    if-ne v2, v3, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v3, "&amp;"

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v2, v1

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_4

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v3, "&gt;"

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    move v3, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v3, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    :cond_5
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/XML11Serializer;->printHex(I)V

    goto :goto_0
.end method

.method public reset()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lorg/apache/xml/serialize/XMLSerializer;->reset()Z

    move-result v1

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method protected final surrogates(IIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v1

    invoke-static {v5}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v2

    invoke-static {v5}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "The character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move v7, v2

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, "\' is an invalid XML character"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move v5, v1

    int-to-char v5, v5

    move v6, v2

    int-to-char v6, v6

    invoke-static {v5, v6}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v5

    move v4, v5

    move v5, v4

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

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

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v5, v3

    if-eqz v5, :cond_2

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xml/serialize/XML11Serializer;->content()Lorg/apache/xml/serialize/ElementState;

    move-result-object v5

    iget-boolean v5, v5, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, "]]>&#x"

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/XML11Serializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, ";<![CDATA["

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/XML11Serializer;->printHex(I)V

    goto :goto_0

    :cond_3
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "The character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move v7, v1

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, "\' is an invalid XML character"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
