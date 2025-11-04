.class public final Ljavax/xml/bind/JAXB;
.super Ljava/lang/Object;
.source "JAXB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/xml/bind/JAXB$Cache;
    }
.end annotation


# static fields
.field private static volatile cache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavax/xml/bind/JAXB$Cache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXB;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _marshal(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "jaxbObject":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "xml":Ljava/lang/Object;
    move-object v5, v0

    :try_start_0
    instance-of v5, v5, Ljavax/xml/bind/JAXBElement;

    if-eqz v5, :cond_1

    .line 534
    move-object v5, v0

    check-cast v5, Ljavax/xml/bind/JAXBElement;

    invoke-virtual {v5}, Ljavax/xml/bind/JAXBElement;->getDeclaredType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Ljavax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Ljavax/xml/bind/JAXBContext;

    move-result-object v5

    move-object v2, v5

    .line 545
    .end local v0    # "jaxbObject":Ljava/lang/Object;
    .local v2, "context":Ljavax/xml/bind/JAXBContext;
    :cond_0
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Ljavax/xml/bind/JAXBContext;->createMarshaller()Ljavax/xml/bind/Marshaller;

    move-result-object v5

    move-object v3, v5

    .line 546
    .local v3, "m":Ljavax/xml/bind/Marshaller;
    move-object v5, v3

    const-string/jumbo v6, "jaxb.formatted.output"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax/xml/bind/Marshaller;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 547
    move-object v5, v3

    move-object v6, v0

    move-object v7, v1

    invoke-static {v7}, Ljavax/xml/bind/JAXB;->toResult(Ljava/lang/Object;)Ljavax/xml/transform/Result;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavax/xml/bind/Marshaller;->marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V

    .line 552
    .line 553
    return-void

    .line 536
    .end local v2    # "context":Ljavax/xml/bind/JAXBContext;
    .end local v3    # "m":Ljavax/xml/bind/Marshaller;
    .restart local v0    # "jaxbObject":Ljava/lang/Object;
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 537
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v5, v3

    const-class v6, Ljavax/xml/bind/annotation/XmlRootElement;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Ljavax/xml/bind/annotation/XmlRootElement;

    move-object v4, v5

    .line 538
    .local v4, "r":Ljavax/xml/bind/annotation/XmlRootElement;
    move-object v5, v3

    invoke-static {v5}, Ljavax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Ljavax/xml/bind/JAXBContext;

    move-result-object v5

    move-object v2, v5

    .line 539
    .restart local v2    # "context":Ljavax/xml/bind/JAXBContext;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 541
    new-instance v5, Ljavax/xml/bind/JAXBElement;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljavax/xml/namespace/QName;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v3

    invoke-static {v9}, Ljavax/xml/bind/JAXB;->inferName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    move-object v8, v3

    move-object v9, v0

    invoke-direct {v6, v7, v8, v9}, Ljavax/xml/bind/JAXBElement;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v5

    .local v0, "jaxbObject":Ljavax/xml/bind/JAXBElement;
    goto :goto_0

    .line 548
    .end local v0    # "jaxbObject":Ljavax/xml/bind/JAXBElement;
    .end local v2    # "context":Ljavax/xml/bind/JAXBContext;
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "r":Ljavax/xml/bind/annotation/XmlRootElement;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 549
    .local v2, "e":Ljavax/xml/bind/JAXBException;
    new-instance v5, Ljavax/xml/bind/DataBindingException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Ljavax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 550
    .end local v2    # "e":Ljavax/xml/bind/JAXBException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 551
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljavax/xml/bind/DataBindingException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-direct {v6, v7}, Ljavax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static getContext(Ljava/lang/Class;)Ljavax/xml/bind/JAXBContext;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/xml/bind/JAXBContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v3, Ljavax/xml/bind/JAXB;->cache:Ljava/lang/ref/WeakReference;

    move-object v1, v3

    .line 107
    .local v1, "c":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavax/xml/bind/JAXB$Cache;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 108
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/bind/JAXB$Cache;

    move-object v2, v3

    .line 109
    .local v2, "d":Ljavax/xml/bind/JAXB$Cache;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Ljavax/xml/bind/JAXB$Cache;->type:Ljava/lang/Class;

    move-object v4, v0

    if-ne v3, v4, :cond_0

    .line 110
    move-object v3, v2

    iget-object v3, v3, Ljavax/xml/bind/JAXB$Cache;->context:Ljavax/xml/bind/JAXBContext;

    move-object v0, v3

    .line 117
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_0
    return-object v0

    .line 114
    .end local v2    # "d":Ljavax/xml/bind/JAXB$Cache;
    .restart local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    new-instance v3, Ljavax/xml/bind/JAXB$Cache;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavax/xml/bind/JAXB$Cache;-><init>(Ljava/lang/Class;)V

    move-object v2, v3

    .line 115
    .restart local v2    # "d":Ljavax/xml/bind/JAXB$Cache;
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Ljavax/xml/bind/JAXB;->cache:Ljava/lang/ref/WeakReference;

    .line 117
    move-object v3, v2

    iget-object v3, v3, Ljavax/xml/bind/JAXB$Cache;->context:Ljavax/xml/bind/JAXBContext;

    move-object v0, v3

    goto :goto_0
.end method

.method private static inferName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "clazz":Ljava/lang/Class;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "clazz":Ljava/lang/Class;
    return-object v0
.end method

.method public static marshal(Ljava/lang/Object;Ljava/io/File;)V
    .locals 4

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "jaxbObject":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "xml":Ljava/io/File;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavax/xml/bind/JAXB;->_marshal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    return-void
.end method

.method public static marshal(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "jaxbObject":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "xml":Ljava/io/OutputStream;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavax/xml/bind/JAXB;->_marshal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 408
    return-void
.end method

.method public static marshal(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "jaxbObject":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "xml":Ljava/io/Writer;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavax/xml/bind/JAXB;->_marshal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 432
    return-void
.end method

.method public static marshal(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "jaxbObject":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "xml":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavax/xml/bind/JAXB;->_marshal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 384
    return-void
.end method

.method public static marshal(Ljava/lang/Object;Ljava/net/URI;)V
    .locals 4

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "jaxbObject":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "xml":Ljava/net/URI;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavax/xml/bind/JAXB;->_marshal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    return-void
.end method

.method public static marshal(Ljava/lang/Object;Ljava/net/URL;)V
    .locals 4

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "jaxbObject":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "xml":Ljava/net/URL;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavax/xml/bind/JAXB;->_marshal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    return-void
.end method

.method public static marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V
    .locals 4

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "jaxbObject":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "xml":Ljavax/xml/transform/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavax/xml/bind/JAXB;->_marshal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 455
    return-void
.end method

.method private static toResult(Ljava/lang/Object;)Ljavax/xml/transform/Result;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "xml":Ljava/lang/Object;
    move-object v3, v0

    if-nez v3, :cond_0

    .line 565
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "no XML is given"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 567
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 569
    :try_start_0
    new-instance v3, Ljava/net/URI;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 572
    .line 574
    .local v0, "xml":Ljava/io/File;
    .local v1, "e":Ljava/net/URISyntaxException;
    :cond_1
    :goto_0
    move-object v3, v0

    instance-of v3, v3, Ljava/io/File;

    if-eqz v3, :cond_2

    .line 575
    move-object v3, v0

    check-cast v3, Ljava/io/File;

    move-object v1, v3

    .line 576
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 599
    .end local v0    # "xml":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    :goto_1
    return-object v0

    .line 570
    .local v0, "xml":Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 571
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v3, Ljava/io/File;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .local v0, "xml":Ljava/io/File;
    goto :goto_0

    .line 578
    :cond_2
    move-object v3, v0

    instance-of v3, v3, Ljava/net/URI;

    if-eqz v3, :cond_3

    .line 579
    move-object v3, v0

    check-cast v3, Ljava/net/URI;

    move-object v1, v3

    .line 580
    .local v1, "uri":Ljava/net/URI;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    move-object v0, v3

    .line 582
    .end local v0    # "xml":Ljava/io/File;
    .end local v1    # "uri":Ljava/net/URI;
    :cond_3
    move-object v3, v0

    instance-of v3, v3, Ljava/net/URL;

    if-eqz v3, :cond_4

    .line 583
    move-object v3, v0

    check-cast v3, Ljava/net/URL;

    move-object v1, v3

    .line 584
    .local v1, "url":Ljava/net/URL;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v2, v3

    .line 585
    .local v2, "con":Ljava/net/URLConnection;
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 586
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 587
    move-object v3, v2

    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 588
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-virtual {v5}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v3

    goto :goto_1

    .line 590
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "con":Ljava/net/URLConnection;
    :cond_4
    move-object v3, v0

    instance-of v3, v3, Ljava/io/OutputStream;

    if-eqz v3, :cond_5

    .line 591
    move-object v3, v0

    check-cast v3, Ljava/io/OutputStream;

    move-object v1, v3

    .line 592
    .local v1, "os":Ljava/io/OutputStream;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v3

    goto :goto_1

    .line 594
    .end local v1    # "os":Ljava/io/OutputStream;
    :cond_5
    move-object v3, v0

    instance-of v3, v3, Ljava/io/Writer;

    if-eqz v3, :cond_6

    .line 595
    move-object v3, v0

    check-cast v3, Ljava/io/Writer;

    move-object v1, v3

    .line 596
    .local v1, "w":Ljava/io/Writer;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    move-object v0, v3

    goto :goto_1

    .line 598
    .end local v1    # "w":Ljava/io/Writer;
    :cond_6
    move-object v3, v0

    instance-of v3, v3, Ljavax/xml/transform/Result;

    if-eqz v3, :cond_7

    .line 599
    move-object v3, v0

    check-cast v3, Ljavax/xml/transform/Result;

    move-object v0, v3

    goto :goto_1

    .line 601
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "I don\'t understand how to handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static toSource(Ljava/lang/Object;)Ljavax/xml/transform/Source;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "xml":Ljava/lang/Object;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 251
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "no XML is given"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 255
    :try_start_0
    new-instance v2, Ljava/net/URI;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 258
    .line 260
    .local v0, "xml":Ljava/io/File;
    .local v1, "e":Ljava/net/URISyntaxException;
    :cond_1
    :goto_0
    move-object v2, v0

    instance-of v2, v2, Ljava/io/File;

    if-eqz v2, :cond_2

    .line 261
    move-object v2, v0

    check-cast v2, Ljava/io/File;

    move-object v1, v2

    .line 262
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 281
    .end local v0    # "xml":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    :goto_1
    return-object v0

    .line 256
    .local v0, "xml":Ljava/lang/Object;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 257
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v2, Ljava/io/File;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .local v0, "xml":Ljava/io/File;
    goto :goto_0

    .line 264
    :cond_2
    move-object v2, v0

    instance-of v2, v2, Ljava/net/URI;

    if-eqz v2, :cond_3

    .line 265
    move-object v2, v0

    check-cast v2, Ljava/net/URI;

    move-object v1, v2

    .line 266
    .local v1, "uri":Ljava/net/URI;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    move-object v0, v2

    .line 268
    .end local v0    # "xml":Ljava/io/File;
    .end local v1    # "uri":Ljava/net/URI;
    :cond_3
    move-object v2, v0

    instance-of v2, v2, Ljava/net/URL;

    if-eqz v2, :cond_4

    .line 269
    move-object v2, v0

    check-cast v2, Ljava/net/URL;

    move-object v1, v2

    .line 270
    .local v1, "url":Ljava/net/URL;
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    .line 272
    .end local v1    # "url":Ljava/net/URL;
    :cond_4
    move-object v2, v0

    instance-of v2, v2, Ljava/io/InputStream;

    if-eqz v2, :cond_5

    .line 273
    move-object v2, v0

    check-cast v2, Ljava/io/InputStream;

    move-object v1, v2

    .line 274
    .local v1, "in":Ljava/io/InputStream;
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    goto :goto_1

    .line 276
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_5
    move-object v2, v0

    instance-of v2, v2, Ljava/io/Reader;

    if-eqz v2, :cond_6

    .line 277
    move-object v2, v0

    check-cast v2, Ljava/io/Reader;

    move-object v1, v2

    .line 278
    .local v1, "r":Ljava/io/Reader;
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    goto :goto_1

    .line 280
    .end local v1    # "r":Ljava/io/Reader;
    :cond_6
    move-object v2, v0

    instance-of v2, v2, Ljavax/xml/transform/Source;

    if-eqz v2, :cond_7

    .line 281
    move-object v2, v0

    check-cast v2, Ljavax/xml/transform/Source;

    move-object v0, v2

    goto :goto_1

    .line 283
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "I don\'t understand how to handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static unmarshal(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "xml":Ljava/io/File;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Ljavax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Ljavax/xml/bind/JAXBContext;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v3

    new-instance v4, Ljavax/xml/transform/stream/StreamSource;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljavax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;

    move-result-object v3

    move-object v2, v3

    .line 129
    .local v2, "item":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v3, v2

    invoke-virtual {v3}, Ljavax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "xml":Ljava/io/File;
    return-object v0

    .line 130
    .end local v2    # "item":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    .restart local v0    # "xml":Ljava/io/File;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 131
    .local v2, "e":Ljavax/xml/bind/JAXBException;
    new-instance v3, Ljavax/xml/bind/DataBindingException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static unmarshal(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "xml":Ljava/io/InputStream;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Ljavax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Ljavax/xml/bind/JAXBContext;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Ljavax/xml/bind/JAXB;->toSource(Ljava/lang/Object;)Ljavax/xml/transform/Source;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljavax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;

    move-result-object v3

    move-object v2, v3

    .line 199
    .local v2, "item":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v3, v2

    invoke-virtual {v3}, Ljavax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v0, v3

    .end local v0    # "xml":Ljava/io/InputStream;
    return-object v0

    .line 200
    .end local v2    # "item":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    .restart local v0    # "xml":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 201
    .local v2, "e":Ljavax/xml/bind/JAXBException;
    new-instance v3, Ljavax/xml/bind/DataBindingException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 202
    .end local v2    # "e":Ljavax/xml/bind/JAXBException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 203
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljavax/xml/bind/DataBindingException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static unmarshal(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "xml":Ljava/io/Reader;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Ljavax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Ljavax/xml/bind/JAXBContext;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Ljavax/xml/bind/JAXB;->toSource(Ljava/lang/Object;)Ljavax/xml/transform/Source;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljavax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;

    move-result-object v3

    move-object v2, v3

    .line 218
    .local v2, "item":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v3, v2

    invoke-virtual {v3}, Ljavax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v0, v3

    .end local v0    # "xml":Ljava/io/Reader;
    return-object v0

    .line 219
    .end local v2    # "item":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    .restart local v0    # "xml":Ljava/io/Reader;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 220
    .local v2, "e":Ljavax/xml/bind/JAXBException;
    new-instance v3, Ljavax/xml/bind/DataBindingException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 221
    .end local v2    # "e":Ljavax/xml/bind/JAXBException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 222
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljavax/xml/bind/DataBindingException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static unmarshal(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "xml":Ljava/lang/String;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Ljavax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Ljavax/xml/bind/JAXBContext;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Ljavax/xml/bind/JAXB;->toSource(Ljava/lang/Object;)Ljavax/xml/transform/Source;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljavax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;

    move-result-object v3

    move-object v2, v3

    .line 181
    .local v2, "item":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v3, v2

    invoke-virtual {v3}, Ljavax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v0, v3

    .end local v0    # "xml":Ljava/lang/String;
    return-object v0

    .line 182
    .end local v2    # "item":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    .restart local v0    # "xml":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 183
    .local v2, "e":Ljavax/xml/bind/JAXBException;
    new-instance v3, Ljavax/xml/bind/DataBindingException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 184
    .end local v2    # "e":Ljavax/xml/bind/JAXBException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 185
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljavax/xml/bind/DataBindingException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static unmarshal(Ljava/net/URI;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "xml":Ljava/net/URI;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Ljavax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Ljavax/xml/bind/JAXBContext;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Ljavax/xml/bind/JAXB;->toSource(Ljava/lang/Object;)Ljavax/xml/transform/Source;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljavax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;

    move-result-object v3

    move-object v2, v3

    .line 162
    .local v2, "item":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v3, v2

    invoke-virtual {v3}, Ljavax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v0, v3

    .end local v0    # "xml":Ljava/net/URI;
    return-object v0

    .line 163
    .end local v2    # "item":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    .restart local v0    # "xml":Ljava/net/URI;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 164
    .local v2, "e":Ljavax/xml/bind/JAXBException;
    new-instance v3, Ljavax/xml/bind/DataBindingException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 165
    .end local v2    # "e":Ljavax/xml/bind/JAXBException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 166
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljavax/xml/bind/DataBindingException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static unmarshal(Ljava/net/URL;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "xml":Ljava/net/URL;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Ljavax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Ljavax/xml/bind/JAXBContext;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Ljavax/xml/bind/JAXB;->toSource(Ljava/lang/Object;)Ljavax/xml/transform/Source;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljavax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;

    move-result-object v3

    move-object v2, v3

    .line 144
    .local v2, "item":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v3, v2

    invoke-virtual {v3}, Ljavax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v0, v3

    .end local v0    # "xml":Ljava/net/URL;
    return-object v0

    .line 145
    .end local v2    # "item":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    .restart local v0    # "xml":Ljava/net/URL;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 146
    .local v2, "e":Ljavax/xml/bind/JAXBException;
    new-instance v3, Ljavax/xml/bind/DataBindingException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 147
    .end local v2    # "e":Ljavax/xml/bind/JAXBException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 148
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljavax/xml/bind/DataBindingException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/xml/transform/Source;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "xml":Ljavax/xml/transform/Source;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Ljavax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Ljavax/xml/bind/JAXBContext;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Ljavax/xml/bind/JAXB;->toSource(Ljava/lang/Object;)Ljavax/xml/transform/Source;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljavax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;

    move-result-object v3

    move-object v2, v3

    .line 235
    .local v2, "item":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v3, v2

    invoke-virtual {v3}, Ljavax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v0, v3

    .end local v0    # "xml":Ljavax/xml/transform/Source;
    return-object v0

    .line 236
    .end local v2    # "item":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    .restart local v0    # "xml":Ljavax/xml/transform/Source;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 237
    .local v2, "e":Ljavax/xml/bind/JAXBException;
    new-instance v3, Ljavax/xml/bind/DataBindingException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 238
    .end local v2    # "e":Ljavax/xml/bind/JAXBException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 239
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljavax/xml/bind/DataBindingException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
