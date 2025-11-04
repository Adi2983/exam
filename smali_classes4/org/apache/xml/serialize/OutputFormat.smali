.class public Lorg/apache/xml/serialize/OutputFormat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serialize/OutputFormat$Defaults;,
        Lorg/apache/xml/serialize/OutputFormat$DTD;
    }
.end annotation


# instance fields
.field private _allowJavaNames:Z

.field private _cdataElements:[Ljava/lang/String;

.field private _doctypePublic:Ljava/lang/String;

.field private _doctypeSystem:Ljava/lang/String;

.field private _encoding:Ljava/lang/String;

.field private _encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

.field private _indent:I

.field private _lineSeparator:Ljava/lang/String;

.field private _lineWidth:I

.field private _mediaType:Ljava/lang/String;

.field private _method:Ljava/lang/String;

.field private _nonEscapingElements:[Ljava/lang/String;

.field private _omitComments:Z

.field private _omitDoctype:Z

.field private _omitXmlDeclaration:Z

.field private _preserve:Z

.field private _preserveEmptyAttributes:Z

.field private _standalone:Z

.field private _version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xml/serialize/OutputFormat;->_indent:I

    move-object v1, v0

    const-string/jumbo v2, "UTF-8"

    iput-object v2, v1, Lorg/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xml/serialize/OutputFormat;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xml/serialize/OutputFormat;->_omitComments:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xml/serialize/OutputFormat;->_standalone:Z

    move-object v1, v0

    const-string/jumbo v2, "\n"

    iput-object v2, v1, Lorg/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    move-object v1, v0

    const/16 v2, 0x48

    iput v2, v1, Lorg/apache/xml/serialize/OutputFormat;->_lineWidth:I

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xml/serialize/OutputFormat;->_preserve:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lorg/apache/xml/serialize/OutputFormat;->_indent:I

    move-object v4, v0

    const-string/jumbo v5, "UTF-8"

    iput-object v5, v4, Lorg/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xml/serialize/OutputFormat;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xml/serialize/OutputFormat;->_omitComments:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xml/serialize/OutputFormat;->_standalone:Z

    move-object v4, v0

    const-string/jumbo v5, "\n"

    iput-object v5, v4, Lorg/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    move-object v4, v0

    const/16 v5, 0x48

    iput v5, v4, Lorg/apache/xml/serialize/OutputFormat;->_lineWidth:I

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xml/serialize/OutputFormat;->_preserve:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/OutputFormat;->setIndenting(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_indent:I

    move-object v2, v0

    const-string/jumbo v3, "UTF-8"

    iput-object v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_omitComments:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_standalone:Z

    move-object v2, v0

    const-string/jumbo v3, "\n"

    iput-object v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    move-object v2, v0

    const/16 v3, 0x48

    iput v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_lineWidth:I

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_preserve:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lorg/apache/xml/serialize/OutputFormat;->whichMethod(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lorg/apache/xml/serialize/OutputFormat;->whichDoctypePublic(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-static {v4}, Lorg/apache/xml/serialize/OutputFormat;->whichDoctypeSystem(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/serialize/OutputFormat;->setDoctype(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/serialize/OutputFormat;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xml/serialize/OutputFormat;->whichMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/OutputFormat;->setMediaType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Lorg/w3c/dom/Document;)V

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/OutputFormat;->setIndenting(Z)V

    return-void
.end method

.method public static whichDoctypePublic(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    :try_start_0
    invoke-interface {v3}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    move-object v2, v3

    :cond_0
    move-object v3, v0

    instance-of v3, v3, Lorg/w3c/dom/html/HTMLDocument;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "-//W3C//DTD XHTML 1.0 Strict//EN"

    move-object v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public static whichDoctypeSystem(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    :try_start_0
    invoke-interface {v3}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    move-object v2, v3

    :cond_0
    move-object v3, v0

    instance-of v3, v3, Lorg/w3c/dom/html/HTMLDocument;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

    move-object v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public static whichMediaType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "text/xml"

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    const-string/jumbo v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "text/html"

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    const-string/jumbo v2, "xhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "text/html"

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "text/plain"

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    const-string/jumbo v2, "fop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "application/pdf"

    move-object v0, v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static whichMethod(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v4, v0

    instance-of v4, v4, Lorg/w3c/dom/html/HTMLDocument;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "html"

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    move-object v4, v0

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v1, v4

    :goto_1
    move-object v4, v1

    if-nez v4, :cond_1

    const-string/jumbo v4, "xml"

    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "html"

    move-object v0, v4

    goto :goto_0

    :cond_2
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "root"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "fop"

    move-object v0, v4

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "xml"

    move-object v0, v4

    goto :goto_0

    :cond_4
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    const/4 v4, 0x0

    move v3, v4

    :goto_2
    move v4, v3

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_6

    :cond_5
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v1, v4

    goto :goto_1

    :cond_6
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_7

    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_7

    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_7

    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_7

    const-string/jumbo v4, "xml"

    move-object v0, v4

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getCDataElements()[Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getDoctypePublic()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_doctypePublic:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_doctypeSystem:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getEncodingInfo()Lorg/apache/xml/serialize/EncodingInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    if-nez v1, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    invoke-static {v2, v3}, Lorg/apache/xml/serialize/Encodings;->getEncodingInfo(Ljava/lang/String;Z)Lorg/apache/xml/serialize/EncodingInfo;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/xml/serialize/OutputFormat;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    move-object v0, v1

    return-object v0
.end method

.method public getIndent()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_indent:I

    move v0, v1

    return v0
.end method

.method public getIndenting()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_indent:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastPrintable()C
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const v1, 0xffff

    move v0, v1

    goto :goto_0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getLineWidth()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_lineWidth:I

    move v0, v1

    return v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_mediaType:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_method:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getNonEscapingElements()[Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getOmitComments()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_omitComments:Z

    move v0, v1

    return v0
.end method

.method public getOmitDocumentType()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    move v0, v1

    return v0
.end method

.method public getOmitXMLDeclaration()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    move v0, v1

    return v0
.end method

.method public getPreserveEmptyAttributes()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    move v0, v1

    return v0
.end method

.method public getPreserveSpace()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_preserve:Z

    move v0, v1

    return v0
.end method

.method public getStandalone()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_standalone:Z

    move v0, v1

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_version:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public isCDataElement(Ljava/lang/String;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_1

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isNonEscapingElement(Ljava/lang/String;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_1

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setAllowJavaNames(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    return-void
.end method

.method public setAllowJavaNames()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xml/serialize/OutputFormat;->_allowJavaNames:Z

    move v0, v1

    return v0
.end method

.method public setCDataElements([Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    return-void
.end method

.method public setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xml/serialize/OutputFormat;->_doctypePublic:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xml/serialize/OutputFormat;->_doctypeSystem:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    return-void
.end method

.method public setEncoding(Lorg/apache/xml/serialize/EncodingInfo;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xml/serialize/EncodingInfo;->getIANAName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_encodingInfo:Lorg/apache/xml/serialize/EncodingInfo;

    return-void
.end method

.method public setIndent(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gez v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_indent:I

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_indent:I

    goto :goto_0
.end method

.method public setIndenting(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x4

    iput v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_indent:I

    move-object v2, v0

    const/16 v3, 0x48

    iput v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_lineWidth:I

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_indent:I

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_lineWidth:I

    goto :goto_0
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    const-string/jumbo v3, "\n"

    iput-object v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLineWidth(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gtz v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_lineWidth:I

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_lineWidth:I

    goto :goto_0
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_mediaType:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_method:Ljava/lang/String;

    return-void
.end method

.method public setNonEscapingElements([Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    return-void
.end method

.method public setOmitComments(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_omitComments:Z

    return-void
.end method

.method public setOmitDocumentType(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_omitDoctype:Z

    return-void
.end method

.method public setOmitXMLDeclaration(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_omitXmlDeclaration:Z

    return-void
.end method

.method public setPreserveEmptyAttributes(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    return-void
.end method

.method public setPreserveSpace(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_preserve:Z

    return-void
.end method

.method public setStandalone(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_standalone:Z

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xml/serialize/OutputFormat;->_version:Ljava/lang/String;

    return-void
.end method
