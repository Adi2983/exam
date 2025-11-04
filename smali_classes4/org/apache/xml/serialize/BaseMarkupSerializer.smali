.class public abstract Lorg/apache/xml/serialize/BaseMarkupSerializer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/DocumentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/apache/xml/serialize/DOMSerializer;
.implements Lorg/apache/xml/serialize/Serializer;


# static fields
.field static class$java$lang$String:Ljava/lang/Class;


# instance fields
.field protected _docTypePublicId:Ljava/lang/String;

.field protected _docTypeSystemId:Ljava/lang/String;

.field private _elementStateCount:I

.field private _elementStates:[Lorg/apache/xml/serialize/ElementState;

.field protected _encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

.field protected _format:Lorg/apache/xml/serialize/OutputFormat;

.field protected _indenting:Z

.field private _output:Ljava/io/OutputStream;

.field private _preRoot:Ljava/util/Vector;

.field protected _prefixes:Ljava/util/Hashtable;

.field private _prepared:Z

.field protected _printer:Lorg/apache/xml/serialize/Printer;

.field protected _started:Z

.field private _writer:Ljava/io/Writer;

.field protected fCurrentNode:Lorg/w3c/dom/Node;

.field protected final fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

.field protected fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field protected fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

.field protected final fStrBuffer:Ljava/lang/StringBuffer;

.field protected features:S


# direct methods
.method protected constructor <init>(Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/4 v4, -0x1

    iput-short v4, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->features:S

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v4, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/16 v6, 0x28

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v4, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v3, v0

    const/16 v4, 0xa

    new-array v4, v4, [Lorg/apache/xml/serialize/ElementState;

    iput-object v4, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lorg/apache/xml/serialize/ElementState;

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lorg/apache/xml/serialize/ElementState;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    return-void

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lorg/apache/xml/serialize/ElementState;

    move v4, v2

    new-instance v5, Lorg/apache/xml/serialize/ElementState;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lorg/apache/xml/serialize/ElementState;-><init>()V

    aput-object v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    return-object v0

    :catch_0
    move-exception v2

    move-object v1, v2

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public asContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public asDOMSerializer()Lorg/apache/xml/serialize/DOMSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public asDocumentHandler()Lorg/xml/sax/DocumentHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v7}, Lorg/apache/xml/serialize/Printer;->enterDTD()V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v8, "<!ATTLIST "

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v8, v3

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v7, v4

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v8, v4

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_0
    move-object v7, v5

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v8, " \""

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v8, 0x3e

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v7, v0

    iget-boolean v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v7}, Lorg/apache/xml/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v7

    move-object v6, v7

    new-instance v7, Lorg/xml/sax/SAXException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v6

    invoke-direct {v8, v9}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method protected characters(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->content()Lorg/apache/xml/serialize/ElementState;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    iget-boolean v4, v4, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v4, :cond_0

    move-object v4, v2

    iget-boolean v4, v4, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    if-eqz v4, :cond_2

    :cond_0
    move-object v4, v2

    iget-boolean v4, v4, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v5, "<![CDATA["

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v4, v2

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v4

    move v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/Printer;->setNextIndent(I)V

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printCDATAText(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/Printer;->setNextIndent(I)V

    :goto_0
    return-void

    :cond_2
    move-object v4, v2

    iget-boolean v4, v4, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v4

    move v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/Printer;->setNextIndent(I)V

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x1

    move-object v7, v2

    iget-boolean v7, v7, Lorg/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/Printer;->setNextIndent(I)V

    goto :goto_0

    :cond_3
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v2

    iget-boolean v7, v7, Lorg/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

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
    invoke-virtual {v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->content()Lorg/apache/xml/serialize/ElementState;

    move-result-object v9

    move-object v4, v9

    move-object v9, v4

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v9, :cond_0

    move-object v9, v4

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    if-eqz v9, :cond_9

    :cond_0
    move-object v9, v4

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v10, "<![CDATA["

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v4

    const/4 v10, 0x1

    iput-boolean v10, v9, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v9}, Lorg/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v9

    move v5, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

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

    iget-object v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

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

    iget-object v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v10, "]]]]><![CDATA[>"

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x2

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move v9, v6

    invoke-static {v9}, Lorg/apache/xerces/util/XMLChar;->isValid(I)Z

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

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->surrogates(IIZ)V

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

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move v9, v6

    const/16 v10, 0x20

    if-lt v9, v10, :cond_6

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    move v10, v6

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v6

    const/16 v10, 0x7f

    if-ne v9, v10, :cond_7

    :cond_6
    move v9, v6

    const/16 v10, 0xa

    if-eq v9, v10, :cond_7

    move v9, v6

    const/16 v10, 0xd

    if-eq v9, v10, :cond_7

    move v9, v6

    const/16 v10, 0x9

    if-ne v9, v10, :cond_8

    :cond_7
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v10, v6

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_8
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v10, "]]>&#x"

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v10, ";<![CDATA["

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

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

    :cond_9
    move-object v9, v4

    :try_start_1
    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-eqz v9, :cond_a

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v9}, Lorg/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v9

    move v5, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->setNextIndent(I)V

    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    const/4 v13, 0x1

    move-object v14, v4

    iget-boolean v14, v14, Lorg/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-virtual/range {v9 .. v14}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printText([CIIZZ)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v10, v5

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->setNextIndent(I)V

    goto/16 :goto_1

    :cond_a
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    const/4 v13, 0x0

    move-object v14, v4

    iget-boolean v14, v14, Lorg/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-virtual/range {v9 .. v14}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printText([CIIZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected checkUnboundNamespacePrefixedNode(Lorg/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected cleanup()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method final clearDocumentState()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/OutputFormat;->getOmitComments()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->content()Lorg/apache/xml/serialize/ElementState;

    move-result-object v4

    move-object v3, v4

    move-object v4, v1

    const-string/jumbo v5, "-->"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    move v4, v2

    if-ltz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v5, "<!--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v1

    const/4 v6, 0x0

    move v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    :goto_1
    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-nez v4, :cond_1

    move-object v4, v0

    new-instance v5, Ljava/util/Vector;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v5, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/xml/serialize/ElementState;->afterComment:Z

    move-object v4, v3

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    goto :goto_0

    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v5, "<!--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v4, :cond_5

    move-object v4, v3

    iget-boolean v4, v4, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v4, :cond_5

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/Printer;->indent()V

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/Printer;->unindent()V

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v4, :cond_2

    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    goto :goto_2
.end method

.method public comment([CII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    :try_start_0
    new-instance v6, Ljava/lang/String;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->comment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v4

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method protected content()Lorg/apache/xml/serialize/ElementState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v2

    move-object v1, v2

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    iget-boolean v2, v2, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-boolean v2, v2, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v3, "]]>"

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    :cond_0
    move-object v2, v1

    iget-boolean v2, v2, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->empty:Z

    :cond_1
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->afterComment:Z

    :cond_2
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/Printer;->enterDTD()V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v5, "<!ELEMENT "

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v4

    move-object v3, v4

    new-instance v4, Lorg/xml/sax/SAXException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public endCDATA()V
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    return-void
.end method

.method public endDTD()V
    .locals 0

    return-void
.end method

.method public endDocument()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serializePreRoot()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    new-instance v2, Lorg/xml/sax/SAXException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public abstract endElement(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public endNonEscaping()V
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->unescaped:Z

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endPreserving()V
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    return-void
.end method

.method protected enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serialize/ElementState;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v0

    iget v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lorg/apache/xml/serialize/ElementState;

    array-length v10, v10

    if-ne v9, v10, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lorg/apache/xml/serialize/ElementState;

    array-length v9, v9

    const/16 v10, 0xa

    add-int/lit8 v9, v9, 0xa

    new-array v9, v9, [Lorg/apache/xml/serialize/ElementState;

    move-object v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lorg/apache/xml/serialize/ElementState;

    array-length v10, v10

    if-lt v9, v10, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lorg/apache/xml/serialize/ElementState;

    array-length v9, v9

    move v8, v9

    :goto_1
    move v9, v8

    move-object v10, v6

    array-length v10, v10

    if-lt v9, v10, :cond_2

    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lorg/apache/xml/serialize/ElementState;

    :cond_0
    move-object v9, v0

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lorg/apache/xml/serialize/ElementState;

    move-object v10, v0

    iget v10, v10, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    aget-object v9, v9, v10

    move-object v5, v9

    move-object v9, v5

    move-object v10, v1

    iput-object v10, v9, Lorg/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    move-object v9, v5

    move-object v10, v2

    iput-object v10, v9, Lorg/apache/xml/serialize/ElementState;->localName:Ljava/lang/String;

    move-object v9, v5

    move-object v10, v3

    iput-object v10, v9, Lorg/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    move-object v9, v5

    move v10, v4

    iput-boolean v10, v9, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    move-object v9, v5

    const/4 v10, 0x1

    iput-boolean v10, v9, Lorg/apache/xml/serialize/ElementState;->empty:Z

    move-object v9, v5

    const/4 v10, 0x0

    iput-boolean v10, v9, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    move-object v9, v5

    const/4 v10, 0x0

    iput-boolean v10, v9, Lorg/apache/xml/serialize/ElementState;->afterComment:Z

    move-object v9, v5

    move-object v10, v5

    const/4 v11, 0x0

    move-object v13, v10

    move v14, v11

    move v10, v14

    move-object v11, v13

    move v12, v14

    iput-boolean v12, v11, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v10, v9, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    move-object v9, v5

    const/4 v10, 0x0

    iput-boolean v10, v9, Lorg/apache/xml/serialize/ElementState;->unescaped:Z

    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    iput-object v10, v9, Lorg/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    move-object v9, v5

    move-object v0, v9

    return-object v0

    :cond_1
    move-object v9, v6

    move v10, v7

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lorg/apache/xml/serialize/ElementState;

    move v12, v7

    aget-object v11, v11, v12

    aput-object v11, v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move-object v9, v6

    move v10, v8

    new-instance v11, Lorg/apache/xml/serialize/ElementState;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Lorg/apache/xml/serialize/ElementState;-><init>()V

    aput-object v11, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
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

    :try_start_0
    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v5}, Lorg/apache/xml/serialize/Printer;->enterDTD()V

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method protected fatalError(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v2, v3}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v2

    return-void

    :cond_0
    new-instance v2, Ljava/io/IOException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getElementState()Lorg/apache/xml/serialize/ElementState;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lorg/apache/xml/serialize/ElementState;

    move-object v2, v0

    iget v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    aget-object v1, v1, v2

    move-object v0, v1

    return-object v0
.end method

.method protected abstract getEntityRef(I)Ljava/lang/String;
.end method

.method protected getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    move-object v4, v0

    iget v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v4, v0

    iget v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    move v3, v4

    :goto_1
    move v4, v3

    if-gtz v4, :cond_2

    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lorg/apache/xml/serialize/ElementState;

    move v5, v3

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lorg/apache/xml/serialize/ElementState;

    move v5, v3

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_3

    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method public ignorableWhitespace([CII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->content()Lorg/apache/xml/serialize/ElementState;

    move-result-object v6

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->setThisIndent(I)V

    move v6, v2

    move v4, v6

    :goto_0
    move v6, v3

    move v9, v6

    move v6, v9

    move v7, v9

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v3, v7

    if-gtz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v7, v1

    move v8, v4

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v5, v6

    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/Printer;->enterDTD()V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v5, "<!ENTITY "

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v5, " \""

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v5, "\">"

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v4

    move-object v3, v4

    new-instance v4, Lorg/xml/sax/SAXException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method protected isDocumentState()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected leaveElementState()Lorg/apache/xml/serialize/ElementState;
    .locals 6

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-lez v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lorg/apache/xml/serialize/ElementState;

    move-object v3, v0

    iget v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0

    :cond_0
    const-string/jumbo v2, "http://apache.org/xml/serializer"

    const-string/jumbo v3, "Internal"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-virtual {v5}, Lorg/apache/xerces/dom/DOMErrorImpl;->reset()V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move v6, v2

    iput-short v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    new-instance v6, Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v11, v4

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lorg/apache/xerces/dom/DOMLocatorImpl;-><init>(IIILorg/w3c/dom/Node;Ljava/lang/String;)V

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v0, v5

    return-object v0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
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

    :try_start_0
    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v5}, Lorg/apache/xml/serialize/Printer;->enterDTD()V

    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, "<!NOTATION "

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, " PUBLIC "

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :cond_0
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v5}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    :cond_1
    return-void

    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, "<!NOTATION "

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, " SYSTEM "

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v4, v5

    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method protected prepare()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_prepared:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    if-nez v2, :cond_1

    const-string/jumbo v2, "http://apache.org/xml/serializer"

    const-string/jumbo v3, "NoWriterSupplied"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Ljava/io/IOException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lorg/apache/xml/serialize/OutputFormat;->getEncodingInfo()Lorg/apache/xml/serialize/EncodingInfo;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    if-eqz v2, :cond_2

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/EncodingInfo;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/OutputFormat;->getIndenting()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    move-object v2, v0

    new-instance v3, Lorg/apache/xml/serialize/IndentPrinter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-direct {v4, v5, v6}, Lorg/apache/xml/serialize/IndentPrinter;-><init>(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)V

    iput-object v3, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    :goto_1
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lorg/apache/xml/serialize/ElementState;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xml/serialize/ElementState;->localName:Ljava/lang/String;

    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lorg/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v3

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->empty:Z

    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->afterComment:Z

    move-object v2, v1

    move-object v3, v1

    const/4 v4, 0x0

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    iput-boolean v5, v4, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lorg/apache/xml/serialize/OutputFormat;->getDoctypePublic()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lorg/apache/xml/serialize/OutputFormat;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_started:Z

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_prepared:Z

    goto/16 :goto_0

    :cond_3
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    move-object v2, v0

    new-instance v3, Lorg/apache/xml/serialize/Printer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-direct {v4, v5, v6}, Lorg/apache/xml/serialize/Printer;-><init>(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)V

    iput-object v3, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    goto :goto_1
.end method

.method protected printCDATAText(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v2, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v2

    if-lt v6, v7, :cond_0

    return-void

    :cond_0
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v3, v6

    move v6, v3

    const/16 v7, 0x5d

    if-ne v6, v7, :cond_4

    move v6, v4

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    move v7, v2

    if-ge v6, v7, :cond_4

    move-object v6, v1

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5d

    if-ne v6, v7, :cond_4

    move-object v6, v1

    move v7, v4

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->features:S

    const/16 v7, 0x10

    and-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_2

    const-string/jumbo v6, "http://apache.org/xml/serializer"

    const-string/jumbo v7, "EndingCDATA"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    move-object v6, v0

    iget-short v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->features:S

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x3

    const-string/jumbo v9, "wf-invalid-character"

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    move-result-object v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v6, v7}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v6

    new-instance v6, Lorg/w3c/dom/ls/LSException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/16 v8, 0x52

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_1
    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x2

    const-string/jumbo v9, "cdata-section-not-splitted"

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    move-result-object v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v6, v7}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lorg/w3c/dom/ls/LSException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/16 v8, 0x52

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_2
    const-string/jumbo v6, "http://apache.org/xml/serializer"

    const-string/jumbo v7, "SplittingCDATA"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DOMError;

    move-result-object v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v6, v7}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v6

    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, "]]]]><![CDATA[>"

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    move v6, v3

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v6

    if-nez v6, :cond_6

    add-int/lit8 v4, v4, 0x1

    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_5

    move-object v6, v0

    move v7, v3

    move-object v8, v1

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->surrogates(IIZ)V

    goto :goto_1

    :cond_5
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, "The character \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "\' is an invalid XML character"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v6, v3

    const/16 v7, 0x20

    if-lt v6, v7, :cond_7

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    move v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v3

    const/16 v7, 0x7f

    if-ne v6, v7, :cond_8

    :cond_7
    move v6, v3

    const/16 v7, 0xa

    if-eq v6, v7, :cond_8

    move v6, v3

    const/16 v7, 0xd

    if-eq v6, v7, :cond_8

    move v6, v3

    const/16 v7, 0x9

    if-ne v6, v7, :cond_9

    :cond_8
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_9
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, "]]>&#x"

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, ";<![CDATA["

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected printDoctypeURL(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    return-void

    :cond_0
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-le v3, v4, :cond_2

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v4, 0x25

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1
.end method

.method protected printEscaped(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getEntityRef(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :goto_0
    return-void

    :cond_0
    move v3, v1

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    move v4, v1

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_2

    :cond_1
    move v3, v1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    move v3, v1

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    move v3, v1

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4

    :cond_2
    move v3, v1

    const/high16 v4, 0x10000

    if-ge v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v4, v1

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v4, v1

    const/high16 v5, 0x10000

    sub-int/2addr v4, v5

    const/16 v5, 0xa

    shr-int/lit8 v4, v4, 0xa

    const v5, 0xd800

    add-int/2addr v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v4, v1

    const/high16 v5, 0x10000

    sub-int/2addr v4, v5

    const/16 v5, 0x3ff

    and-int/lit16 v4, v4, 0x3ff

    const v5, 0xdc00

    add-int/2addr v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    :cond_4
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printHex(I)V

    goto :goto_0
.end method

.method protected printEscaped(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_0

    return-void

    :cond_0
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v3, v5

    move v5, v3

    const v6, 0xfc00

    and-int/2addr v5, v6

    const v6, 0xd800

    if-ne v5, v6, :cond_1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    move-object v5, v1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    move v5, v4

    const v6, 0xfc00

    and-int/2addr v5, v6

    const v6, 0xdc00

    if-ne v5, v6, :cond_1

    const/high16 v5, 0x10000

    move v6, v3

    const v7, 0xd800

    sub-int/2addr v6, v7

    const/16 v7, 0xa

    shl-int/lit8 v6, v6, 0xa

    add-int/2addr v5, v6

    move v6, v4

    add-int/2addr v5, v6

    const v6, 0xdc00

    sub-int/2addr v5, v6

    move v3, v5

    add-int/lit8 v2, v2, 0x1

    :cond_1
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method final printHex(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v3, "&#x"

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    return-void
.end method

.method protected printText(Ljava/lang/String;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, v2

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    move v6, v5

    const/16 v7, 0xa

    if-eq v6, v7, :cond_2

    move v6, v5

    const/16 v7, 0xd

    if-eq v6, v7, :cond_2

    move v6, v3

    if-eqz v6, :cond_3

    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v7, v5

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    move v4, v6

    :goto_2
    move v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    move v6, v5

    const/16 v7, 0x20

    if-eq v6, v7, :cond_5

    move v6, v5

    const/16 v7, 0xc

    if-eq v6, v7, :cond_5

    move v6, v5

    const/16 v7, 0x9

    if-eq v6, v7, :cond_5

    move v6, v5

    const/16 v7, 0xa

    if-eq v6, v7, :cond_5

    move v6, v5

    const/16 v7, 0xd

    if-ne v6, v7, :cond_6

    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/Printer;->printSpace()V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move v6, v3

    if-eqz v6, :cond_7

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v7, v5

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_7
    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_3
.end method

.method protected printText([CIIZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move v7, v4

    if-eqz v7, :cond_5

    :goto_0
    move v7, v3

    move v10, v7

    move v7, v10

    move v8, v10

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v3, v8

    if-gtz v7, :cond_0

    :goto_1
    return-void

    :cond_0
    move-object v7, v1

    move v8, v2

    aget-char v7, v7, v8

    move v6, v7

    add-int/lit8 v2, v2, 0x1

    move v7, v6

    const/16 v8, 0xa

    if-eq v7, v8, :cond_1

    move v7, v6

    const/16 v8, 0xd

    if-eq v7, v8, :cond_1

    move v7, v5

    if-eqz v7, :cond_2

    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v8, v6

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    :cond_2
    move-object v7, v0

    move v8, v6

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_0

    :cond_3
    move-object v7, v1

    move v8, v2

    aget-char v7, v7, v8

    move v6, v7

    add-int/lit8 v2, v2, 0x1

    move v7, v6

    const/16 v8, 0x20

    if-eq v7, v8, :cond_4

    move v7, v6

    const/16 v8, 0xc

    if-eq v7, v8, :cond_4

    move v7, v6

    const/16 v8, 0x9

    if-eq v7, v8, :cond_4

    move v7, v6

    const/16 v8, 0xa

    if-eq v7, v8, :cond_4

    move v7, v6

    const/16 v8, 0xd

    if-ne v7, v8, :cond_6

    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v7}, Lorg/apache/xml/serialize/Printer;->printSpace()V

    :cond_5
    :goto_2
    move v7, v3

    move v10, v7

    move v7, v10

    move v8, v10

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v3, v8

    if-gtz v7, :cond_3

    goto :goto_1

    :cond_6
    move v7, v5

    if-eqz v7, :cond_7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v8, v6

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_7
    move-object v7, v0

    move v8, v6

    invoke-virtual {v7, v8}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_2
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    :try_start_0
    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v4

    move-object v3, v4

    new-instance v4, Lorg/xml/sax/SAXException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->content()Lorg/apache/xml/serialize/ElementState;

    move-result-object v5

    move-object v4, v5

    move-object v5, v1

    const-string/jumbo v6, "?>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    move v5, v3

    if-ltz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v6, "<?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v1

    const/4 v7, 0x0

    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    :goto_0
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v5, v2

    const-string/jumbo v6, "?>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    move v5, v3

    if-ltz v5, :cond_4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    move-object v6, v2

    const/4 v7, 0x0

    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    :cond_0
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v6, "?>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-nez v5, :cond_1

    move-object v5, v0

    new-instance v6, Ljava/util/Vector;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v6, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v6, "<?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    goto :goto_0

    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    goto :goto_1

    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v5}, Lorg/apache/xml/serialize/Printer;->indent()V

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v5}, Lorg/apache/xml/serialize/Printer;->unindent()V

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v5, :cond_2

    move-object v5, v4

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    goto :goto_2
.end method

.method public reset()Z
    .locals 6

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const-string/jumbo v2, "http://apache.org/xml/serializer"

    const-string/jumbo v3, "ResetInMiddle"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_prepared:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public serialize(Lorg/w3c/dom/Document;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    move-result v2

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serializePreRoot()V

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->cleanup()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->flush()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    :cond_0
    return-void
.end method

.method public serialize(Lorg/w3c/dom/DocumentFragment;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    move-result v2

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->cleanup()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->flush()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    :cond_0
    return-void
.end method

.method public serialize(Lorg/w3c/dom/Element;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    move-result v2

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->cleanup()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->flush()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    :cond_0
    return-void
.end method

.method protected abstract serializeElement(Lorg/w3c/dom/Element;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected serializeNode(Lorg/w3c/dom/Node;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v8}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v8

    const/4 v9, 0x4

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    move-object v9, v1

    invoke-interface {v8, v9}, Lorg/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v8

    move v3, v8

    move v8, v3

    packed-switch v8, :pswitch_data_1

    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    goto :goto_0

    :cond_1
    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v8, :cond_2

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v8

    iget-boolean v8, v8, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v8, :cond_2

    move-object v8, v2

    const/16 v9, 0xa

    const/16 v10, 0x20

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    :cond_2
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    move-object v8, v0

    iget-short v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->features:S

    const/16 v9, 0x8

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_4

    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v8}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v8

    const/16 v9, 0x8

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    move-object v9, v1

    invoke-interface {v8, v9}, Lorg/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v8

    move v3, v8

    move v8, v3

    packed-switch v8, :pswitch_data_2

    :cond_3
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->startCDATA()V

    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->endCDATA()V

    goto/16 :goto_0

    :pswitch_4
    goto/16 :goto_0

    :cond_4
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v8}, Lorg/apache/xml/serialize/OutputFormat;->getOmitComments()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v8}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v8

    const/16 v9, 0x80

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    move-object v9, v1

    invoke-interface {v8, v9}, Lorg/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v8

    move v3, v8

    move v8, v3

    packed-switch v8, :pswitch_data_3

    :cond_5
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->comment(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    goto/16 :goto_0

    :pswitch_7
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->endCDATA()V

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->content()Lorg/apache/xml/serialize/ElementState;

    move-result-object v8

    move-object v8, v0

    iget-short v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->features:S

    const/4 v9, 0x4

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_6

    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    if-nez v8, :cond_9

    :cond_6
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v8, :cond_7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v8}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v8

    const/16 v9, 0x10

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    move-object v9, v1

    invoke-interface {v8, v9}, Lorg/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v8

    move v3, v8

    move v8, v3

    packed-switch v8, :pswitch_data_4

    :cond_7
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->checkUnboundNamespacePrefixedNode(Lorg/w3c/dom/Node;)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v9, "&"

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v9, v1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v9, ";"

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    goto/16 :goto_0

    :pswitch_9
    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v2, v8

    :goto_1
    move-object v8, v2

    if-nez v8, :cond_8

    goto/16 :goto_0

    :cond_8
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    move-object v8, v2

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v2, v8

    goto :goto_1

    :cond_9
    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v2, v8

    :goto_2
    move-object v8, v2

    if-nez v8, :cond_a

    goto/16 :goto_0

    :cond_a
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    move-object v8, v2

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v2, v8

    goto :goto_2

    :pswitch_a
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v8, :cond_b

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v8}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v8

    const/16 v9, 0x40

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_b

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    move-object v9, v1

    invoke-interface {v8, v9}, Lorg/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v8

    move v2, v8

    move v8, v2

    packed-switch v8, :pswitch_data_5

    :cond_b
    move-object v8, v0

    move-object v9, v1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    move-object v10, v1

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    goto/16 :goto_0

    :pswitch_c
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v8, :cond_c

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v8}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v8

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_c

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    move-object v9, v1

    invoke-interface {v8, v9}, Lorg/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v8

    move v2, v8

    move v8, v2

    packed-switch v8, :pswitch_data_6

    :cond_c
    move-object v8, v0

    move-object v9, v1

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serializeElement(Lorg/w3c/dom/Element;)V

    goto/16 :goto_0

    :pswitch_d
    goto/16 :goto_0

    :pswitch_e
    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v3, v8

    :goto_3
    move-object v8, v3

    if-nez v8, :cond_d

    goto/16 :goto_0

    :cond_d
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    move-object v8, v3

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v3, v8

    goto :goto_3

    :pswitch_f
    move-object v8, v1

    check-cast v8, Lorg/w3c/dom/Document;

    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v8

    move-object v2, v8

    move-object v8, v2

    if-eqz v8, :cond_f

    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v8}, Lorg/apache/xml/serialize/Printer;->enterDTD()V

    move-object v8, v0

    move-object v9, v2

    invoke-interface {v9}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    move-object v8, v0

    move-object v9, v2

    invoke-interface {v9}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    move-object v8, v2

    invoke-interface {v8}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    move-object v8, v3

    if-eqz v8, :cond_e

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_e

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v9, v3

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_e
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->endDTD()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    :goto_4
    :pswitch_10
    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v2, v8

    :goto_5
    move-object v8, v2

    if-nez v8, :cond_14

    goto/16 :goto_0

    :catch_0
    move-exception v8

    move-object v3, v8

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    move-object v4, v8

    const/4 v8, 0x0

    move-object v5, v8

    const/4 v8, 0x0

    move-object v6, v8

    move-object v8, v4

    :try_start_1
    const-string/jumbo v9, "getPublicId"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v7, v8

    move-object v8, v7

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->class$java$lang$String:Ljava/lang/Class;

    if-nez v9, :cond_12

    const-string/jumbo v9, "java.lang.String"

    invoke-static {v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    sput-object v10, Lorg/apache/xml/serialize/BaseMarkupSerializer;->class$java$lang$String:Ljava/lang/Class;

    :goto_6
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    move-object v8, v7

    move-object v9, v2

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v8

    :cond_10
    :goto_7
    move-object v8, v4

    :try_start_2
    const-string/jumbo v9, "getSystemId"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v7, v8

    move-object v8, v7

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->class$java$lang$String:Ljava/lang/Class;

    if-nez v9, :cond_13

    const-string/jumbo v9, "java.lang.String"

    invoke-static {v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    sput-object v10, Lorg/apache/xml/serialize/BaseMarkupSerializer;->class$java$lang$String:Ljava/lang/Class;

    :goto_8
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    move-object v8, v7

    move-object v9, v2

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v8

    :cond_11
    :goto_9
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v8}, Lorg/apache/xml/serialize/Printer;->enterDTD()V

    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->endDTD()V

    goto/16 :goto_4

    :cond_12
    :try_start_3
    sget-object v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->class$java$lang$String:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v8

    move-object v7, v8

    goto :goto_7

    :cond_13
    :try_start_4
    sget-object v9, Lorg/apache/xml/serialize/BaseMarkupSerializer;->class$java$lang$String:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception v8

    move-object v7, v8

    goto :goto_9

    :cond_14
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    move-object v8, v2

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v2, v8

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_5
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method protected serializePreRoot()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public setOutputByteStream(Ljava/io/OutputStream;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://apache.org/xml/serializer"

    const-string/jumbo v4, "ArgumentIsNull"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string/jumbo v8, "output"

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    move-result v3

    return-void
.end method

.method public setOutputCharStream(Ljava/io/Writer;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://apache.org/xml/serializer"

    const-string/jumbo v4, "ArgumentIsNull"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string/jumbo v8, "writer"

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    move-result v3

    return-void
.end method

.method public setOutputFormat(Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://apache.org/xml/serializer"

    const-string/jumbo v4, "ArgumentIsNull"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string/jumbo v8, "format"

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    move-result v3

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->endCDATA()V

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->content()Lorg/apache/xml/serialize/ElementState;

    move-result-object v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/Printer;->printText(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public startCDATA()V
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    return-void
.end method

.method public final startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
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

    :try_start_0
    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v5}, Lorg/apache/xml/serialize/Printer;->enterDTD()V

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public startDocument()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    new-instance v2, Lorg/xml/sax/SAXException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startNonEscaping()V
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->unescaped:Z

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    move-object v3, v0

    new-instance v4, Ljava/util/Hashtable;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    move-object v4, v2

    move-object v5, v1

    if-nez v5, :cond_1

    const-string/jumbo v5, ""

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-void

    :cond_1
    move-object v5, v1

    goto :goto_0
.end method

.method public startPreserving()V
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    return-void
.end method

.method protected surrogates(IIZ)V
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

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

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

    invoke-static {v5}, Lorg/apache/xerces/util/XMLChar;->isValid(I)Z

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

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v5, v3

    if-eqz v5, :cond_2

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->content()Lorg/apache/xml/serialize/ElementState;

    move-result-object v5

    iget-boolean v5, v5, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, "]]>&#x"

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v6, ";<![CDATA["

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printHex(I)V

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

    invoke-virtual {v5, v6}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    move-object v4, p4

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/Printer;->enterDTD()V

    move-object v6, v2

    if-nez v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, "<!ENTITY "

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, " SYSTEM "

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :goto_0
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, " NDATA "

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    :cond_1
    return-void

    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, "<!ENTITY "

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, " PUBLIC "

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v5, v6

    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method
