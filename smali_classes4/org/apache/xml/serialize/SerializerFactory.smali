.class public abstract Lorg/apache/xml/serialize/SerializerFactory;
.super Ljava/lang/Object;


# static fields
.field public static final FactoriesProperty:Ljava/lang/String; = "org.apache.xml.serialize.factories"

.field private static _factories:Ljava/util/Hashtable;

.field static class$org$apache$xml$serialize$SerializerFactory:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v5, Ljava/util/Hashtable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    sput-object v5, Lorg/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    new-instance v5, Lorg/apache/xml/serialize/SerializerFactoryImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "xml"

    invoke-direct {v6, v7}, Lorg/apache/xml/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object v5, v0

    invoke-static {v5}, Lorg/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lorg/apache/xml/serialize/SerializerFactory;)V

    new-instance v5, Lorg/apache/xml/serialize/SerializerFactoryImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "html"

    invoke-direct {v6, v7}, Lorg/apache/xml/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object v5, v0

    invoke-static {v5}, Lorg/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lorg/apache/xml/serialize/SerializerFactory;)V

    new-instance v5, Lorg/apache/xml/serialize/SerializerFactoryImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "xhtml"

    invoke-direct {v6, v7}, Lorg/apache/xml/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object v5, v0

    invoke-static {v5}, Lorg/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lorg/apache/xml/serialize/SerializerFactory;)V

    new-instance v5, Lorg/apache/xml/serialize/SerializerFactoryImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "text"

    invoke-direct {v6, v7}, Lorg/apache/xml/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object v5, v0

    invoke-static {v5}, Lorg/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lorg/apache/xml/serialize/SerializerFactory;)V

    const-string/jumbo v5, "org.apache.xml.serialize.factories"

    invoke-static {v5}, Lorg/apache/xml/serialize/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    if-eqz v5, :cond_0

    new-instance v5, Ljava/util/StringTokenizer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    const-string/jumbo v8, " ;,:"

    invoke-direct {v6, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    :try_start_0
    sget-object v6, Lorg/apache/xml/serialize/SerializerFactory;->class$org$apache$xml$serialize$SerializerFactory:Ljava/lang/Class;

    if-nez v6, :cond_3

    const-string/jumbo v6, "org.apache.xml.serialize.SerializerFactory"

    invoke-static {v6}, Lorg/apache/xml/serialize/SerializerFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    sput-object v7, Lorg/apache/xml/serialize/SerializerFactory;->class$org$apache$xml$serialize$SerializerFactory:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lorg/apache/xml/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xml/serialize/SerializerFactory;

    move-object v0, v5

    sget-object v5, Lorg/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xml/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lorg/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xml/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_2
    goto :goto_0

    :cond_3
    sget-object v6, Lorg/apache/xml/serialize/SerializerFactory;->class$org$apache$xml$serialize$SerializerFactory:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

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

.method public static getSerializerFactory(Ljava/lang/String;)Lorg/apache/xml/serialize/SerializerFactory;
    .locals 3

    move-object v0, p0

    sget-object v1, Lorg/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/serialize/SerializerFactory;

    move-object v0, v1

    return-object v0
.end method

.method public static registerSerializerFactory(Lorg/apache/xml/serialize/SerializerFactory;)V
    .locals 7

    move-object v0, p0

    sget-object v4, Lorg/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    move-object v2, v4

    move-object v4, v2

    monitor-enter v4

    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Lorg/apache/xml/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    sget-object v4, Lorg/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4

    move-object v4, v3

    throw v4
.end method


# virtual methods
.method protected abstract getSupportedMethod()Ljava/lang/String;
.end method

.method public abstract makeSerializer(Ljava/io/OutputStream;Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract makeSerializer(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;
.end method

.method public abstract makeSerializer(Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;
.end method
