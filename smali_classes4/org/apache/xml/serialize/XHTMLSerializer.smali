.class public Lorg/apache/xml/serialize/XHTMLSerializer;
.super Lorg/apache/xml/serialize/HTMLSerializer;


# direct methods
.method public constructor <init>()V
    .locals 9

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/xml/serialize/OutputFormat;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "xhtml"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v1, v2, v3}, Lorg/apache/xml/serialize/HTMLSerializer;-><init>(ZLorg/apache/xml/serialize/OutputFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    :goto_0
    invoke-direct {v3, v4, v5}, Lorg/apache/xml/serialize/HTMLSerializer;-><init>(ZLorg/apache/xml/serialize/OutputFormat;)V

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/XHTMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-void

    :cond_0
    new-instance v5, Lorg/apache/xml/serialize/OutputFormat;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "xhtml"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    :goto_0
    invoke-direct {v3, v4, v5}, Lorg/apache/xml/serialize/HTMLSerializer;-><init>(ZLorg/apache/xml/serialize/OutputFormat;)V

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/XHTMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-void

    :cond_0
    new-instance v5, Lorg/apache/xml/serialize/OutputFormat;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "xhtml"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    :goto_0
    invoke-direct {v2, v3, v4}, Lorg/apache/xml/serialize/HTMLSerializer;-><init>(ZLorg/apache/xml/serialize/OutputFormat;)V

    return-void

    :cond_0
    new-instance v4, Lorg/apache/xml/serialize/OutputFormat;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "xhtml"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public setOutputFormat(Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    :goto_0
    invoke-super {v2, v3}, Lorg/apache/xml/serialize/HTMLSerializer;->setOutputFormat(Lorg/apache/xml/serialize/OutputFormat;)V

    return-void

    :cond_0
    new-instance v3, Lorg/apache/xml/serialize/OutputFormat;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "xhtml"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
