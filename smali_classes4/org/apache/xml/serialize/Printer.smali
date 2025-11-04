.class public Lorg/apache/xml/serialize/Printer;
.super Ljava/lang/Object;


# static fields
.field private static final BufferSize:I = 0x1000


# instance fields
.field private final _buffer:[C

.field protected _docWriter:Ljava/io/Writer;

.field protected _dtdWriter:Ljava/io/StringWriter;

.field protected _exception:Ljava/io/IOException;

.field protected final _format:Lorg/apache/xml/serialize/OutputFormat;

.field private _pos:I

.field protected _writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/16 v4, 0x1000

    new-array v4, v4, [C

    iput-object v4, v3, Lorg/apache/xml/serialize/Printer;->_buffer:[C

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xml/serialize/Printer;->_pos:I

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xml/serialize/Printer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xml/serialize/Printer;->_pos:I

    return-void
.end method


# virtual methods
.method public breakLine()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget v2, v2, Lorg/apache/xml/serialize/Printer;->_pos:I

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write([C)V

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xml/serialize/Printer;->_pos:I

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/Printer;->_buffer:[C

    move-object v3, v0

    iget v3, v3, Lorg/apache/xml/serialize/Printer;->_pos:I

    const/16 v4, 0xa

    aput-char v4, v2, v3

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lorg/apache/xml/serialize/Printer;->_pos:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_1
    move-object v2, v1

    throw v2
.end method

.method public breakLine(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    return-void
.end method

.method public enterDTD()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    if-nez v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xml/serialize/Printer;->flushLine(Z)V

    move-object v1, v0

    new-instance v2, Ljava/io/StringWriter;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    iput-object v2, v1, Lorg/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iput-object v2, v1, Lorg/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    iput-object v2, v1, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/Printer;->_buffer:[C

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lorg/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Writer;->write([CII)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xml/serialize/Printer;->_pos:I

    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_0
    move-object v2, v1

    throw v2
.end method

.method public flushLine(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/Printer;->_buffer:[C

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lorg/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xml/serialize/Printer;->_pos:I

    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v3, :cond_0

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_0
.end method

.method public getException()Ljava/io/IOException;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    move-object v0, v1

    return-object v0
.end method

.method public getNextIndent()I
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public indent()V
    .locals 0

    return-void
.end method

.method public leaveDTD()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xml/serialize/Printer;->flushLine(Z)V

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    iput-object v2, v1, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget v2, v2, Lorg/apache/xml/serialize/Printer;->_pos:I

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write([C)V

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xml/serialize/Printer;->_pos:I

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/Printer;->_buffer:[C

    move-object v3, v0

    iget v3, v3, Lorg/apache/xml/serialize/Printer;->_pos:I

    const/16 v4, 0x20

    aput-char v4, v2, v3

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lorg/apache/xml/serialize/Printer;->_pos:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_1
    move-object v2, v1

    throw v2
.end method

.method public printText(C)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    :try_start_0
    iget v3, v3, Lorg/apache/xml/serialize/Printer;->_pos:I

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write([C)V

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xml/serialize/Printer;->_pos:I

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/Printer;->_buffer:[C

    move-object v4, v0

    iget v4, v4, Lorg/apache/xml/serialize/Printer;->_pos:I

    move v5, v1

    aput-char v5, v3, v4

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lorg/apache/xml/serialize/Printer;->_pos:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v3, :cond_1

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_1
    move-object v3, v2

    throw v3
.end method

.method public printText(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v4

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    move-object v4, v0

    iget v4, v4, Lorg/apache/xml/serialize/Printer;->_pos:I

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write([C)V

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lorg/apache/xml/serialize/Printer;->_pos:I

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/Printer;->_buffer:[C

    move-object v5, v0

    iget v5, v5, Lorg/apache/xml/serialize/Printer;->_pos:I

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v4, v5

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lorg/apache/xml/serialize/Printer;->_pos:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v4, :cond_2

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_2
    move-object v4, v2

    throw v4
.end method

.method public printText(Ljava/lang/StringBuffer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move v2, v4

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    move-object v4, v0

    iget v4, v4, Lorg/apache/xml/serialize/Printer;->_pos:I

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write([C)V

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lorg/apache/xml/serialize/Printer;->_pos:I

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/Printer;->_buffer:[C

    move-object v5, v0

    iget v5, v5, Lorg/apache/xml/serialize/Printer;->_pos:I

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    aput-char v6, v4, v5

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lorg/apache/xml/serialize/Printer;->_pos:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v4, :cond_2

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_2
    move-object v4, v2

    throw v4
.end method

.method public printText([CII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :goto_0
    move v5, v3

    move v9, v5

    move v5, v9

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v3, v6

    if-gtz v5, :cond_0

    return-void

    :cond_0
    move-object v5, v0

    :try_start_0
    iget v5, v5, Lorg/apache/xml/serialize/Printer;->_pos:I

    const/16 v6, 0x1000

    if-ne v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write([C)V

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lorg/apache/xml/serialize/Printer;->_pos:I

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/Printer;->_buffer:[C

    move-object v6, v0

    iget v6, v6, Lorg/apache/xml/serialize/Printer;->_pos:I

    move-object v7, v1

    move v8, v2

    aget-char v7, v7, v8

    aput-char v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lorg/apache/xml/serialize/Printer;->_pos:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v5, :cond_2

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_2
    move-object v5, v4

    throw v5
.end method

.method public setNextIndent(I)V
    .locals 0

    return-void
.end method

.method public setThisIndent(I)V
    .locals 0

    return-void
.end method

.method public unindent()V
    .locals 0

    return-void
.end method
