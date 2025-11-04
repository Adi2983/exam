.class public Lorg/apache/html/dom/HTMLDocumentImpl;
.super Lorg/apache/xerces/dom/DocumentImpl;

# interfaces
.implements Lorg/w3c/dom/html/HTMLDocument;


# static fields
.field private static final _elemClassSigHTML:[Ljava/lang/Class;

.field private static _elementTypesHTML:Ljava/util/Hashtable; = null

.field static class$java$lang$String:Ljava/lang/Class; = null

.field static class$org$apache$html$dom$HTMLDocumentImpl:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = 0x3b7a30e3bf92ceecL


# instance fields
.field private _anchors:Lorg/apache/html/dom/HTMLCollectionImpl;

.field private _applets:Lorg/apache/html/dom/HTMLCollectionImpl;

.field private _forms:Lorg/apache/html/dom/HTMLCollectionImpl;

.field private _images:Lorg/apache/html/dom/HTMLCollectionImpl;

.field private _links:Lorg/apache/html/dom/HTMLCollectionImpl;

.field private _writer:Ljava/io/StringWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/html/dom/HTMLDocumentImpl;->class$org$apache$html$dom$HTMLDocumentImpl:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string/jumbo v3, "org.apache.html.dom.HTMLDocumentImpl"

    invoke-static {v3}, Lorg/apache/html/dom/HTMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    sput-object v4, Lorg/apache/html/dom/HTMLDocumentImpl;->class$org$apache$html$dom$HTMLDocumentImpl:Ljava/lang/Class;

    :goto_0
    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/html/dom/HTMLDocumentImpl;->class$java$lang$String:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string/jumbo v3, "java.lang.String"

    invoke-static {v3}, Lorg/apache/html/dom/HTMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    sput-object v4, Lorg/apache/html/dom/HTMLDocumentImpl;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    aput-object v3, v1, v2

    sput-object v0, Lorg/apache/html/dom/HTMLDocumentImpl;->_elemClassSigHTML:[Ljava/lang/Class;

    return-void

    :cond_0
    sget-object v3, Lorg/apache/html/dom/HTMLDocumentImpl;->class$org$apache$html$dom$HTMLDocumentImpl:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/apache/html/dom/HTMLDocumentImpl;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/DocumentImpl;-><init>()V

    invoke-static {}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementTypes()V

    return-void
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

.method private getElementById(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    :goto_1
    return-object v0

    :cond_0
    move-object v5, v3

    instance-of v5, v5, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_2

    move-object v5, v1

    move-object v6, v3

    check-cast v6, Lorg/w3c/dom/Element;

    const-string/jumbo v7, "id"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lorg/w3c/dom/Element;

    move-object v0, v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/apache/html/dom/HTMLDocumentImpl;->getElementById(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_2

    move-object v5, v4

    move-object v0, v5

    goto :goto_1

    :cond_2
    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    goto :goto_0
.end method

.method private static populateElementType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    sget-object v3, Lorg/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "org.apache.html.dom."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/apache/html/dom/HTMLDocumentImpl;->class$org$apache$html$dom$HTMLDocumentImpl:Ljava/lang/Class;

    if-nez v6, :cond_0

    const-string/jumbo v6, "org.apache.html.dom.HTMLDocumentImpl"

    invoke-static {v6}, Lorg/apache/html/dom/HTMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    sput-object v7, Lorg/apache/html/dom/HTMLDocumentImpl;->class$org$apache$html$dom$HTMLDocumentImpl:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lorg/apache/html/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-void

    :cond_0
    sget-object v6, Lorg/apache/html/dom/HTMLDocumentImpl;->class$org$apache$html$dom$HTMLDocumentImpl:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    new-instance v3, Ljava/lang/RuntimeException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "HTM019 OpenXML Error: Could not find or execute class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, " implementing HTML element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static declared-synchronized populateElementTypes()V
    .locals 5

    const-class v3, Lorg/apache/html/dom/HTMLDocumentImpl;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lorg/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Hashtable;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x3f

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lorg/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;

    const-string/jumbo v0, "A"

    const-string/jumbo v1, "HTMLAnchorElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "APPLET"

    const-string/jumbo v1, "HTMLAppletElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "AREA"

    const-string/jumbo v1, "HTMLAreaElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BASE"

    const-string/jumbo v1, "HTMLBaseElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BASEFONT"

    const-string/jumbo v1, "HTMLBaseFontElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BLOCKQUOTE"

    const-string/jumbo v1, "HTMLQuoteElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BODY"

    const-string/jumbo v1, "HTMLBodyElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BR"

    const-string/jumbo v1, "HTMLBRElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BUTTON"

    const-string/jumbo v1, "HTMLButtonElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "DEL"

    const-string/jumbo v1, "HTMLModElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "DIR"

    const-string/jumbo v1, "HTMLDirectoryElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "DIV"

    const-string/jumbo v1, "HTMLDivElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "DL"

    const-string/jumbo v1, "HTMLDListElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FIELDSET"

    const-string/jumbo v1, "HTMLFieldSetElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FONT"

    const-string/jumbo v1, "HTMLFontElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FORM"

    const-string/jumbo v1, "HTMLFormElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FRAME"

    const-string/jumbo v1, "HTMLFrameElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FRAMESET"

    const-string/jumbo v1, "HTMLFrameSetElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "HEAD"

    const-string/jumbo v1, "HTMLHeadElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "H1"

    const-string/jumbo v1, "HTMLHeadingElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "H2"

    const-string/jumbo v1, "HTMLHeadingElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "H3"

    const-string/jumbo v1, "HTMLHeadingElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "H4"

    const-string/jumbo v1, "HTMLHeadingElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "H5"

    const-string/jumbo v1, "HTMLHeadingElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "H6"

    const-string/jumbo v1, "HTMLHeadingElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "HR"

    const-string/jumbo v1, "HTMLHRElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "HTML"

    const-string/jumbo v1, "HTMLHtmlElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "IFRAME"

    const-string/jumbo v1, "HTMLIFrameElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "IMG"

    const-string/jumbo v1, "HTMLImageElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "INPUT"

    const-string/jumbo v1, "HTMLInputElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "INS"

    const-string/jumbo v1, "HTMLModElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ISINDEX"

    const-string/jumbo v1, "HTMLIsIndexElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "LABEL"

    const-string/jumbo v1, "HTMLLabelElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "LEGEND"

    const-string/jumbo v1, "HTMLLegendElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "LI"

    const-string/jumbo v1, "HTMLLIElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "LINK"

    const-string/jumbo v1, "HTMLLinkElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "MAP"

    const-string/jumbo v1, "HTMLMapElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "MENU"

    const-string/jumbo v1, "HTMLMenuElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "META"

    const-string/jumbo v1, "HTMLMetaElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OBJECT"

    const-string/jumbo v1, "HTMLObjectElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OL"

    const-string/jumbo v1, "HTMLOListElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OPTGROUP"

    const-string/jumbo v1, "HTMLOptGroupElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "OPTION"

    const-string/jumbo v1, "HTMLOptionElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "P"

    const-string/jumbo v1, "HTMLParagraphElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "PARAM"

    const-string/jumbo v1, "HTMLParamElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "PRE"

    const-string/jumbo v1, "HTMLPreElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Q"

    const-string/jumbo v1, "HTMLQuoteElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "SCRIPT"

    const-string/jumbo v1, "HTMLScriptElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "SELECT"

    const-string/jumbo v1, "HTMLSelectElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "STYLE"

    const-string/jumbo v1, "HTMLStyleElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TABLE"

    const-string/jumbo v1, "HTMLTableElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "CAPTION"

    const-string/jumbo v1, "HTMLTableCaptionElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TD"

    const-string/jumbo v1, "HTMLTableCellElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TH"

    const-string/jumbo v1, "HTMLTableCellElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "COL"

    const-string/jumbo v1, "HTMLTableColElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "COLGROUP"

    const-string/jumbo v1, "HTMLTableColElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TR"

    const-string/jumbo v1, "HTMLTableRowElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TBODY"

    const-string/jumbo v1, "HTMLTableSectionElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "THEAD"

    const-string/jumbo v1, "HTMLTableSectionElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TFOOT"

    const-string/jumbo v1, "HTMLTableSectionElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TEXTAREA"

    const-string/jumbo v1, "HTMLTextAreaElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "TITLE"

    const-string/jumbo v1, "HTMLTitleElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "UL"

    const-string/jumbo v1, "HTMLUListElementImpl"

    invoke-static {v0, v1}, Lorg/apache/html/dom/HTMLDocumentImpl;->populateElementType(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method


# virtual methods
.method protected canRenameElements(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)Z
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v6, v1

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v0, v6

    :goto_1
    return v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    sget-object v6, Lorg/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;

    move-object v7, v2

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    move-object v4, v6

    sget-object v6, Lorg/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    move-object v5, v6

    move-object v6, v4

    move-object v7, v5

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_2
    move v0, v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 8

    move-object v0, p0

    move v1, p1

    new-instance v3, Lorg/apache/html/dom/HTMLDocumentImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/apache/html/dom/HTMLDocumentImpl;-><init>()V

    move-object v2, v3

    move-object v3, v0

    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/html/dom/HTMLDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    move-object v3, v0

    move-object v4, v2

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/apache/html/dom/HTMLDocumentImpl;->cloneNode(Lorg/apache/xerces/dom/CoreDocumentImpl;Z)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public close()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    if-eqz v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    :cond_0
    return-void
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-super {v2, v3}, Lorg/apache/xerces/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    sget-object v5, Lorg/apache/html/dom/HTMLDocumentImpl;->_elementTypesHTML:Ljava/util/Hashtable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    move-object v2, v5

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    :try_start_0
    sget-object v6, Lorg/apache/html/dom/HTMLDocumentImpl;->_elemClassSigHTML:[Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    :goto_0
    return-object v0

    :catch_0
    move-exception v5

    move-object v4, v5

    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, "HTM15 Tag \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "\' associated with an Element class that failed to construct.\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v5, Lorg/apache/html/dom/HTMLElementImpl;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lorg/apache/html/dom/HTMLElementImpl;-><init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/html/dom/HTMLDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/html/dom/HTMLDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public getAnchors()Lorg/w3c/dom/html/HTMLCollection;
    .locals 7

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_anchors:Lorg/apache/html/dom/HTMLCollectionImpl;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLDocumentImpl;->getBody()Lorg/w3c/dom/html/HTMLElement;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lorg/apache/html/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v2, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_anchors:Lorg/apache/html/dom/HTMLCollectionImpl;

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_anchors:Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getApplets()Lorg/w3c/dom/html/HTMLCollection;
    .locals 7

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_applets:Lorg/apache/html/dom/HTMLCollectionImpl;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLDocumentImpl;->getBody()Lorg/w3c/dom/html/HTMLElement;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lorg/apache/html/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v2, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_applets:Lorg/apache/html/dom/HTMLCollectionImpl;

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_applets:Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v0, v1

    return-object v0
.end method

.method public declared-synchronized getBody()Lorg/w3c/dom/html/HTMLElement;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v14, p0

    monitor-enter v14

    move-object v10, v0

    :try_start_0
    invoke-virtual {v10}, Lorg/apache/html/dom/HTMLDocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    move-object v1, v10

    move-object v10, v0

    invoke-virtual {v10}, Lorg/apache/html/dom/HTMLDocumentImpl;->getHead()Lorg/w3c/dom/html/HTMLElement;

    move-result-object v10

    move-object v2, v10

    move-object v10, v1

    move-object v6, v10

    move-object v10, v6

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v10, v2

    :try_start_1
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v3, v10

    :goto_0
    move-object v10, v3

    if-eqz v10, :cond_0

    move-object v10, v3

    instance-of v10, v10, Lorg/w3c/dom/html/HTMLBodyElement;

    if-nez v10, :cond_0

    move-object v10, v3

    instance-of v10, v10, Lorg/w3c/dom/html/HTMLFrameSetElement;

    if-eqz v10, :cond_2

    :cond_0
    move-object v10, v3

    if-eqz v10, :cond_4

    move-object v10, v3

    move-object v7, v10

    move-object v10, v7

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v2

    :try_start_2
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v4, v10

    :goto_1
    move-object v10, v4

    if-eqz v10, :cond_1

    move-object v10, v4

    move-object v11, v3

    if-ne v10, v11, :cond_3

    :cond_1
    move-object v10, v7

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v3

    :try_start_3
    check-cast v10, Lorg/w3c/dom/html/HTMLElement;

    move-object v8, v10

    move-object v10, v6

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v10, v8

    move-object v0, v10

    :goto_2
    monitor-exit v14

    return-object v0

    :cond_2
    move-object v10, v3

    :try_start_4
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v10

    move-object v3, v10

    goto :goto_0

    :cond_3
    move-object v10, v4

    :try_start_5
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v5, v10

    move-object v10, v3

    move-object v11, v4

    move-object v12, v3

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v10

    move-object v10, v5

    move-object v4, v10

    goto :goto_1

    :catchall_0
    move-exception v10

    move-object v8, v10

    move-object v10, v7

    :try_start_6
    monitor-exit v10

    move-object v10, v8

    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v10

    move-object v9, v10

    move-object v10, v6

    :try_start_7
    monitor-exit v10

    move-object v10, v9

    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit v14

    throw v0

    :cond_4
    :try_start_8
    new-instance v10, Lorg/apache/html/dom/HTMLBodyElementImpl;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    const-string/jumbo v13, "BODY"

    invoke-direct {v11, v12, v13}, Lorg/apache/html/dom/HTMLBodyElementImpl;-><init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    move-object v3, v10

    move-object v10, v1

    move-object v11, v3

    invoke-interface {v10, v11}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v10, v6

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v10, v3

    :try_start_9
    check-cast v10, Lorg/w3c/dom/html/HTMLElement;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v0, v10

    goto :goto_2
.end method

.method public getCookie()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public declared-synchronized getDocumentElement()Lorg/w3c/dom/Element;
    .locals 10

    move-object v0, p0

    move-object v8, p0

    monitor-enter v8

    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLDocumentImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    if-nez v4, :cond_0

    new-instance v4, Lorg/apache/html/dom/HTMLHtmlElementImpl;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const-string/jumbo v7, "HTML"

    invoke-direct {v5, v6, v7}, Lorg/apache/html/dom/HTMLHtmlElementImpl;-><init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    move-object v1, v4

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLDocumentImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    if-nez v4, :cond_2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/html/dom/HTMLDocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v4, v1

    check-cast v4, Lorg/w3c/dom/html/HTMLElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    :goto_2
    monitor-exit v8

    return-object v0

    :cond_0
    move-object v4, v1

    :try_start_1
    instance-of v4, v4, Lorg/w3c/dom/html/HTMLHtmlElement;

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, Lorg/w3c/dom/html/HTMLElement;

    move-object v0, v4

    goto :goto_2

    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    :cond_2
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    move-object v4, v3

    move-object v2, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public declared-synchronized getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-super {v3, v4}, Lorg/apache/xerces/dom/DocumentImpl;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v0, v3

    :goto_0
    monitor-exit v6

    return-object v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    :try_start_1
    invoke-direct {v3, v4, v5}, Lorg/apache/html/dom/HTMLDocumentImpl;->getElementById(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public getElementsByName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/html/dom/NameNodeListImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/apache/html/dom/NameNodeListImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public final getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-super {v2, v3}, Lorg/apache/xerces/dom/DocumentImpl;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/dom/DocumentImpl;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    move-object v4, v2

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-super {v3, v4}, Lorg/apache/xerces/dom/DocumentImpl;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public getForms()Lorg/w3c/dom/html/HTMLCollection;
    .locals 7

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_forms:Lorg/apache/html/dom/HTMLCollectionImpl;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLDocumentImpl;->getBody()Lorg/w3c/dom/html/HTMLElement;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/apache/html/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v2, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_forms:Lorg/apache/html/dom/HTMLCollectionImpl;

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_forms:Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v0, v1

    return-object v0
.end method

.method public declared-synchronized getHead()Lorg/w3c/dom/html/HTMLElement;
    .locals 15

    move-object v0, p0

    move-object v13, p0

    monitor-enter v13

    move-object v9, v0

    :try_start_0
    invoke-virtual {v9}, Lorg/apache/html/dom/HTMLDocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    move-object v2, v9

    move-object v9, v2

    move-object v5, v9

    move-object v9, v5

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v9, v2

    :try_start_1
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v1, v9

    :goto_0
    move-object v9, v1

    if-eqz v9, :cond_0

    move-object v9, v1

    instance-of v9, v9, Lorg/w3c/dom/html/HTMLHeadElement;

    if-eqz v9, :cond_2

    :cond_0
    move-object v9, v1

    if-eqz v9, :cond_4

    move-object v9, v1

    move-object v6, v9

    move-object v9, v6

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v2

    :try_start_2
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v3, v9

    :goto_1
    move-object v9, v3

    if-eqz v9, :cond_1

    move-object v9, v3

    move-object v10, v1

    if-ne v9, v10, :cond_3

    :cond_1
    move-object v9, v6

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v9, v1

    :try_start_3
    check-cast v9, Lorg/w3c/dom/html/HTMLElement;

    move-object v7, v9

    move-object v9, v5

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v9, v7

    move-object v0, v9

    :goto_2
    monitor-exit v13

    return-object v0

    :cond_2
    move-object v9, v1

    :try_start_4
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v9

    move-object v1, v9

    goto :goto_0

    :cond_3
    move-object v9, v3

    :try_start_5
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v4, v9

    move-object v9, v1

    move-object v10, v3

    move-object v11, v1

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v9

    move-object v9, v4

    move-object v3, v9

    goto :goto_1

    :catchall_0
    move-exception v9

    move-object v7, v9

    move-object v9, v6

    :try_start_6
    monitor-exit v9

    move-object v9, v7

    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v9

    move-object v8, v9

    move-object v9, v5

    :try_start_7
    monitor-exit v9

    move-object v9, v8

    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit v13

    throw v0

    :cond_4
    :try_start_8
    new-instance v9, Lorg/apache/html/dom/HTMLHeadElementImpl;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    const-string/jumbo v12, "HEAD"

    invoke-direct {v10, v11, v12}, Lorg/apache/html/dom/HTMLHeadElementImpl;-><init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    move-object v1, v9

    move-object v9, v2

    move-object v10, v1

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v9, v5

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v9, v1

    :try_start_9
    check-cast v9, Lorg/w3c/dom/html/HTMLElement;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v0, v9

    goto :goto_2
.end method

.method public getImages()Lorg/w3c/dom/html/HTMLCollection;
    .locals 7

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_images:Lorg/apache/html/dom/HTMLCollectionImpl;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLDocumentImpl;->getBody()Lorg/w3c/dom/html/HTMLElement;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/html/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v2, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_images:Lorg/apache/html/dom/HTMLCollectionImpl;

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_images:Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getLinks()Lorg/w3c/dom/html/HTMLCollection;
    .locals 7

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_links:Lorg/apache/html/dom/HTMLCollectionImpl;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLDocumentImpl;->getBody()Lorg/w3c/dom/html/HTMLElement;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Lorg/apache/html/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v2, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_links:Lorg/apache/html/dom/HTMLCollectionImpl;

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_links:Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .locals 7

    move-object v0, p0

    move-object v6, p0

    monitor-enter v6

    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLDocumentImpl;->getHead()Lorg/w3c/dom/html/HTMLElement;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    const-string/jumbo v5, "TITLE"

    invoke-interface {v4, v5}, Lorg/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_0

    move-object v4, v2

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    check-cast v4, Lorg/w3c/dom/html/HTMLTitleElement;

    invoke-interface {v4}, Lorg/w3c/dom/html/HTMLTitleElement;->getText()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v0, v4

    :goto_0
    monitor-exit v6

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v4, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public open()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Ljava/io/StringWriter;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    iput-object v2, v1, Lorg/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    :cond_0
    return-void
.end method

.method public declared-synchronized setBody(Lorg/w3c/dom/html/HTMLElement;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v16, p0

    monitor-enter v16

    move-object v13, v1

    move-object v7, v13

    move-object v13, v7

    :try_start_0
    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v13, v0

    :try_start_1
    invoke-virtual {v13}, Lorg/apache/html/dom/HTMLDocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    move-object v2, v13

    move-object v13, v0

    invoke-virtual {v13}, Lorg/apache/html/dom/HTMLDocumentImpl;->getHead()Lorg/w3c/dom/html/HTMLElement;

    move-result-object v13

    move-object v4, v13

    move-object v13, v2

    move-object v8, v13

    move-object v13, v8

    monitor-enter v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v13, v0

    :try_start_2
    const-string/jumbo v14, "BODY"

    invoke-virtual {v13, v14}, Lorg/apache/html/dom/HTMLDocumentImpl;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    move-object v6, v13

    move-object v13, v6

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lez v13, :cond_3

    move-object v13, v6

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    move-object v3, v13

    move-object v13, v3

    move-object v9, v13

    move-object v13, v9

    monitor-enter v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v13, v4

    move-object v5, v13

    :goto_0
    move-object v13, v5

    if-nez v13, :cond_0

    move-object v13, v2

    move-object v14, v1

    :try_start_3
    invoke-interface {v13, v14}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v13

    move-object v13, v9

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v13, v8

    :try_start_4
    monitor-exit v13

    move-object v13, v7

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    monitor-exit v16

    return-void

    :cond_0
    move-object v13, v5

    :try_start_5
    instance-of v13, v13, Lorg/w3c/dom/Element;

    if-eqz v13, :cond_2

    move-object v13, v5

    move-object v14, v3

    if-eq v13, v14, :cond_1

    move-object v13, v2

    move-object v14, v1

    move-object v15, v5

    invoke-interface {v13, v14, v15}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v13

    :goto_2
    move-object v13, v9

    monitor-exit v13

    move-object v13, v8

    monitor-exit v13

    move-object v13, v7

    monitor-exit v13

    goto :goto_1

    :cond_1
    move-object v13, v2

    move-object v14, v1

    move-object v15, v3

    invoke-interface {v13, v14, v15}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v13

    goto :goto_2

    :cond_2
    move-object v13, v5

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v13

    move-object v5, v13

    goto :goto_0

    :catchall_0
    move-exception v13

    move-object v10, v13

    move-object v13, v9

    :try_start_6
    monitor-exit v13

    move-object v13, v10

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v13

    move-object v11, v13

    move-object v13, v8

    :try_start_7
    monitor-exit v13

    move-object v13, v11

    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v13

    move-object v12, v13

    move-object v13, v7

    :try_start_8
    monitor-exit v13

    move-object v13, v12

    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit v16

    throw v0

    :cond_3
    move-object v13, v2

    move-object v14, v1

    :try_start_9
    invoke-interface {v13, v14}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v13

    move-object v13, v8

    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v13, v7

    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_1
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setTitle(Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v9, p0

    monitor-enter v9

    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Lorg/apache/html/dom/HTMLDocumentImpl;->getHead()Lorg/w3c/dom/html/HTMLElement;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    const-string/jumbo v6, "TITLE"

    invoke-interface {v5, v6}, Lorg/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_1

    move-object v5, v3

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v6, v2

    if-eq v5, v6, :cond_0

    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Lorg/w3c/dom/html/HTMLElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    :cond_0
    move-object v5, v4

    check-cast v5, Lorg/w3c/dom/html/HTMLTitleElement;

    move-object v6, v1

    invoke-interface {v5, v6}, Lorg/w3c/dom/html/HTMLTitleElement;->setText(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v9

    return-void

    :cond_1
    :try_start_1
    new-instance v5, Lorg/apache/html/dom/HTMLTitleElementImpl;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const-string/jumbo v8, "TITLE"

    invoke-direct {v6, v7, v8}, Lorg/apache/html/dom/HTMLTitleElementImpl;-><init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    move-object v4, v5

    move-object v5, v4

    check-cast v5, Lorg/w3c/dom/html/HTMLTitleElement;

    move-object v6, v1

    invoke-interface {v5, v6}, Lorg/w3c/dom/html/HTMLTitleElement;->setText(Ljava/lang/String;)V

    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Lorg/w3c/dom/html/HTMLElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public write(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeln(Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/html/dom/HTMLDocumentImpl;->_writer:Ljava/io/StringWriter;

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
