.class public abstract Ljavax/xml/bind/JAXBContext;
.super Ljava/lang/Object;
.source "JAXBContext.java"


# static fields
.field public static final JAXB_CONTEXT_FACTORY:Ljava/lang/String; = "javax.xml.bind.context.factory"


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBContext;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 217
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Ljavax/xml/bind/JAXBContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "contextPath":Ljava/lang/String;
    move-object v1, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v2}, Ljavax/xml/bind/JAXBContext;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/bind/JAXBContext;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "contextPath":Ljava/lang/String;
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/bind/JAXBContext;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "contextPath":Ljava/lang/String;
    move-object v1, p1

    .local v1, "classLoader":Ljava/lang/ClassLoader;
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljavax/xml/bind/JAXBContext;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Ljavax/xml/bind/JAXBContext;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "contextPath":Ljava/lang/String;
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Ljavax/xml/bind/JAXBContext;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljavax/xml/bind/JAXBContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "contextPath":Ljava/lang/String;
    move-object v1, p1

    .local v1, "classLoader":Ljava/lang/ClassLoader;
    move-object v2, p2

    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string/jumbo v3, "javax.xml.bind.context.factory"

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v3, v4, v5, v6}, Ljavax/xml/bind/ContextFinder;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Ljavax/xml/bind/JAXBContext;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "contextPath":Ljava/lang/String;
    return-object v0
.end method

.method public static varargs newInstance([Ljava/lang/Class;)Ljavax/xml/bind/JAXBContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "classesToBeBound":[Ljava/lang/Class;
    move-object v1, v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Ljavax/xml/bind/JAXBContext;->newInstance([Ljava/lang/Class;Ljava/util/Map;)Ljavax/xml/bind/JAXBContext;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "classesToBeBound":[Ljava/lang/Class;
    return-object v0
.end method

.method public static newInstance([Ljava/lang/Class;Ljava/util/Map;)Ljavax/xml/bind/JAXBContext;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljavax/xml/bind/JAXBContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "classesToBeBound":[Ljava/lang/Class;
    move-object v1, p1

    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-ltz v3, :cond_1

    .line 571
    move-object v3, v0

    move v4, v2

    aget-object v3, v3, v4

    if-nez v3, :cond_0

    .line 572
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 570
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 574
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljavax/xml/bind/ContextFinder;->find([Ljava/lang/Class;Ljava/util/Map;)Ljavax/xml/bind/JAXBContext;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "classesToBeBound":[Ljava/lang/Class;
    return-object v0
.end method


# virtual methods
.method public createBinder()Ljavax/xml/bind/Binder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/xml/bind/Binder",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBContext;
    move-object v1, v0

    const-class v2, Lorg/w3c/dom/Node;

    invoke-virtual {v1, v2}, Ljavax/xml/bind/JAXBContext;->createBinder(Ljava/lang/Class;)Ljavax/xml/bind/Binder;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/JAXBContext;
    return-object v0
.end method

.method public createBinder(Ljava/lang/Class;)Ljavax/xml/bind/Binder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/xml/bind/Binder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBContext;
    move-object v1, p1

    .local v1, "domType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public createJAXBIntrospector()Ljavax/xml/bind/JAXBIntrospector;
    .locals 4

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBContext;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public abstract createMarshaller()Ljavax/xml/bind/Marshaller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract createUnmarshaller()Ljavax/xml/bind/Unmarshaller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract createValidator()Ljavax/xml/bind/Validator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public generateSchema(Ljavax/xml/bind/SchemaOutputResolver;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBContext;
    move-object v1, p1

    .local v1, "outputResolver":Ljavax/xml/bind/SchemaOutputResolver;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method
