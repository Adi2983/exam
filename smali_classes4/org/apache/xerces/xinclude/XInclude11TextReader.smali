.class public Lorg/apache/xerces/xinclude/XInclude11TextReader;
.super Lorg/apache/xerces/xinclude/XIncludeTextReader;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/parser/XMLInputSource;Lorg/apache/xerces/xinclude/XIncludeHandler;I)V
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

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/xinclude/XIncludeTextReader;-><init>(Lorg/apache/xerces/xni/parser/XMLInputSource;Lorg/apache/xerces/xinclude/XIncludeHandler;I)V

    return-void
.end method


# virtual methods
.method protected isValid(I)Z
    .locals 3

    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v2

    move v0, v2

    return v0
.end method
