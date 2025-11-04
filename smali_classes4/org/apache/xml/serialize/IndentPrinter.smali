.class public Lorg/apache/xml/serialize/IndentPrinter;
.super Lorg/apache/xml/serialize/Printer;


# instance fields
.field private _line:Ljava/lang/StringBuffer;

.field private _nextIndent:I

.field private _spaces:I

.field private _text:Ljava/lang/StringBuffer;

.field private _thisIndent:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xml/serialize/Printer;-><init>(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)V

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/16 v6, 0x50

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v4, v3, Lorg/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v4, v3, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xml/serialize/IndentPrinter;->_spaces:I

    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Lorg/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iput v4, v3, Lorg/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    return-void
.end method


# virtual methods
.method public breakLine()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xml/serialize/IndentPrinter;->breakLine(Z)V

    return-void
.end method

.method public breakLine(Z)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    move-object v3, v0

    iget v3, v3, Lorg/apache/xml/serialize/IndentPrinter;->_spaces:I

    if-gtz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v4, v3, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/IndentPrinter;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lorg/apache/xml/serialize/IndentPrinter;->_spaces:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lorg/apache/xml/serialize/IndentPrinter;->_spaces:I

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    if-nez v3, :cond_1

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    goto :goto_1
.end method

.method public enterDTD()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v2, v1, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    move-object v1, v0

    new-instance v2, Ljava/io/StringWriter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    iput-object v2, v1, Lorg/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iput-object v2, v1, Lorg/apache/xml/serialize/IndentPrinter;->_docWriter:Ljava/io/Writer;

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    iput-object v2, v1, Lorg/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/IndentPrinter;->breakLine()V

    :cond_1
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    if-nez v2, :cond_2

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    goto :goto_0
.end method

.method public flushLine(Z)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xml/serialize/IndentPrinter;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/OutputFormat;->getIndenting()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    if-nez v4, :cond_1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    move v2, v4

    const/4 v4, 0x2

    move v5, v2

    mul-int/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/IndentPrinter;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v5}, Lorg/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v5

    if-le v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/IndentPrinter;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v4

    if-lez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/IndentPrinter;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lorg/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v4

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    move v2, v4

    :cond_0
    :goto_0
    move v4, v2

    if-gtz v4, :cond_3

    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lorg/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iput v5, v4, Lorg/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lorg/apache/xml/serialize/IndentPrinter;->_spaces:I

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/16 v7, 0x28

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v5, v4, Lorg/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    if-nez v4, :cond_2

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    goto :goto_1
.end method

.method public getNextIndent()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    move v0, v1

    return v0
.end method

.method public indent()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/IndentPrinter;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lorg/apache/xml/serialize/OutputFormat;->getIndent()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lorg/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    return-void
.end method

.method public leaveDTD()Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v2, v1, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_docWriter:Ljava/io/Writer;

    iput-object v2, v1, Lorg/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public printSpace()V
    .locals 7

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lorg/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/IndentPrinter;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lorg/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v3

    if-le v2, v3, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/IndentPrinter;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lorg/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object v2, v0

    iget v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_spaces:I

    if-gtz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v3, v2, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    :cond_1
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lorg/apache/xml/serialize/IndentPrinter;->_spaces:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/apache/xml/serialize/IndentPrinter;->_spaces:I

    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    goto :goto_0

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lorg/apache/xml/serialize/IndentPrinter;->_spaces:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lorg/apache/xml/serialize/IndentPrinter;->_spaces:I

    goto :goto_0
.end method

.method public printText(C)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    return-void
.end method

.method public printText(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    return-void
.end method

.method public printText(Ljava/lang/StringBuffer;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    return-void
.end method

.method public printText([CII)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v4

    return-void
.end method

.method public setNextIndent(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    return-void
.end method

.method public setThisIndent(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    return-void
.end method

.method public unindent()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/IndentPrinter;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lorg/apache/xml/serialize/OutputFormat;->getIndent()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    move-object v1, v0

    iget v1, v1, Lorg/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    if-gez v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-nez v1, :cond_1

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iput v2, v1, Lorg/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    :cond_1
    return-void
.end method
