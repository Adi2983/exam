.class Ljavax/xml/bind/ContextFinder;
.super Ljava/lang/Object;
.source "ContextFinder.java"


# static fields
.field private static final PLATFORM_DEFAULT_FACTORY_CLASS:Ljava/lang/String; = "com.sun.xml.bind.v2.ContextFactory"

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 42
    const-string/jumbo v1, "javax.xml.bind"

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    .line 44
    :try_start_0
    new-instance v1, Ljavax/xml/bind/GetPropertyAction;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "jaxb.debug"

    invoke-direct {v2, v3}, Ljavax/xml/bind/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    sget-object v1, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 48
    sget-object v1, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 49
    new-instance v1, Ljava/util/logging/ConsoleHandler;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/util/logging/ConsoleHandler;-><init>()V

    move-object v0, v1

    .line 50
    .local v0, "handler":Ljava/util/logging/ConsoleHandler;
    move-object v1, v0

    sget-object v2, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/ConsoleHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 51
    sget-object v1, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/ContextFinder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Ljavax/xml/bind/JAXBContext;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 226
    move-object/from16 v0, p0

    .local v0, "factoryId":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "contextPath":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "classLoader":Ljava/lang/ClassLoader;
    move-object/from16 v3, p3

    .local v3, "properties":Ljava/util/Map;
    const-class v11, Ljavax/xml/bind/JAXBContext;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 230
    .local v4, "jaxbContextFQCN":Ljava/lang/String;
    new-instance v11, Ljava/util/StringTokenizer;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v1

    const-string/jumbo v14, ":"

    invoke-direct {v12, v13, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v11

    .line 233
    .local v6, "packages":Ljava/util/StringTokenizer;
    move-object v11, v6

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-nez v11, :cond_0

    .line 235
    new-instance v11, Ljavax/xml/bind/JAXBException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "ContextFinder.NoPackageInContextPath"

    invoke-static {v13}, Ljavax/xml/bind/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 238
    :cond_0
    sget-object v11, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string/jumbo v12, "Searching jaxb.properties"

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 240
    :goto_0
    move-object v11, v6

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 241
    move-object v11, v6

    const-string/jumbo v12, ":"

    invoke-virtual {v11, v12}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2e

    const/16 v13, 0x2f

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 243
    .local v8, "packageName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/jaxb.properties"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v5, v11

    .line 245
    .local v5, "propFileName":Ljava/lang/StringBuilder;
    move-object v11, v2

    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljavax/xml/bind/ContextFinder;->loadJAXBProperties(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v11

    move-object v9, v11

    .line 246
    .local v9, "props":Ljava/util/Properties;
    move-object v11, v9

    if-eqz v11, :cond_2

    .line 247
    move-object v11, v9

    move-object v12, v0

    invoke-virtual {v11, v12}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 248
    move-object v11, v9

    move-object v12, v0

    invoke-virtual {v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 249
    .local v7, "factoryClassName":Ljava/lang/String;
    move-object v11, v1

    move-object v12, v7

    move-object v13, v2

    move-object v14, v3

    invoke-static {v11, v12, v13, v14}, Ljavax/xml/bind/ContextFinder;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Ljavax/xml/bind/JAXBContext;

    move-result-object v11

    move-object v0, v11

    .line 290
    .end local v0    # "factoryId":Ljava/lang/String;
    .end local v5    # "propFileName":Ljava/lang/StringBuilder;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "props":Ljava/util/Properties;
    :goto_1
    return-object v0

    .line 251
    .end local v7    # "factoryClassName":Ljava/lang/String;
    .restart local v0    # "factoryId":Ljava/lang/String;
    .restart local v5    # "propFileName":Ljava/lang/StringBuilder;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "props":Ljava/util/Properties;
    :cond_1
    new-instance v11, Ljavax/xml/bind/JAXBException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string/jumbo v13, "ContextFinder.MissingProperty"

    move-object v14, v8

    move-object v15, v0

    invoke-static {v13, v14, v15}, Ljavax/xml/bind/Messages;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 254
    :cond_2
    goto :goto_0

    .line 256
    .end local v5    # "propFileName":Ljava/lang/StringBuilder;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "props":Ljava/util/Properties;
    :cond_3
    sget-object v11, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string/jumbo v12, "Searching the system property"

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 259
    new-instance v11, Ljavax/xml/bind/GetPropertyAction;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v4

    invoke-direct {v12, v13}, Ljavax/xml/bind/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object v7, v11

    .line 260
    .restart local v7    # "factoryClassName":Ljava/lang/String;
    move-object v11, v7

    if-eqz v11, :cond_4

    .line 261
    move-object v11, v1

    move-object v12, v7

    move-object v13, v2

    move-object v14, v3

    invoke-static {v11, v12, v13, v14}, Ljavax/xml/bind/ContextFinder;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Ljavax/xml/bind/JAXBContext;

    move-result-object v11

    move-object v0, v11

    goto :goto_1

    .line 264
    :cond_4
    sget-object v11, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string/jumbo v12, "Searching META-INF/services"

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 269
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "META-INF/services/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v9, v11

    .line 270
    .local v9, "resource":Ljava/lang/StringBuilder;
    move-object v11, v2

    move-object v12, v9

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    move-object v10, v11

    .line 273
    .local v10, "resourceStream":Ljava/io/InputStream;
    move-object v11, v10

    if-eqz v11, :cond_5

    .line 274
    new-instance v11, Ljava/io/BufferedReader;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/io/InputStreamReader;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v10

    const-string/jumbo v16, "UTF-8"

    invoke-direct/range {v14 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v11

    .line 275
    .local v8, "r":Ljava/io/BufferedReader;
    move-object v11, v8

    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 276
    move-object v11, v8

    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 277
    move-object v11, v1

    move-object v12, v7

    move-object v13, v2

    move-object v14, v3

    invoke-static {v11, v12, v13, v14}, Ljavax/xml/bind/ContextFinder;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Ljavax/xml/bind/JAXBContext;

    move-result-object v11

    move-object v0, v11

    goto/16 :goto_1

    .line 279
    .end local v8    # "r":Ljava/io/BufferedReader;
    :cond_5
    sget-object v11, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to load:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v9

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 286
    .line 289
    sget-object v11, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string/jumbo v12, "Trying to create the platform default provider"

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 290
    move-object v11, v1

    const-string/jumbo v12, "com.sun.xml.bind.v2.ContextFactory"

    move-object v13, v2

    move-object v14, v3

    invoke-static {v11, v12, v13, v14}, Ljavax/xml/bind/ContextFinder;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Ljavax/xml/bind/JAXBContext;

    move-result-object v11

    move-object v0, v11

    goto/16 :goto_1

    .line 281
    .end local v9    # "resource":Ljava/lang/StringBuilder;
    .end local v10    # "resourceStream":Ljava/io/InputStream;
    :catch_0
    move-exception v11

    move-object v9, v11

    .line 283
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v11, Ljavax/xml/bind/JAXBException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v9

    invoke-direct {v12, v13}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 284
    .end local v9    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v11

    move-object v9, v11

    .line 285
    .local v9, "e":Ljava/io/IOException;
    new-instance v11, Ljavax/xml/bind/JAXBException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v9

    invoke-direct {v12, v13}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v11
.end method

.method static find([Ljava/lang/Class;Ljava/util/Map;)Ljavax/xml/bind/JAXBContext;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 298
    move-object/from16 v0, p0

    .local v0, "classes":[Ljava/lang/Class;
    move-object/from16 v1, p1

    .local v1, "properties":Ljava/util/Map;
    const-class v13, Ljavax/xml/bind/JAXBContext;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v2, v13

    .line 302
    .local v2, "jaxbContextFQCN":Ljava/lang/String;
    move-object v13, v0

    move-object v4, v13

    .local v4, "arr$":[Ljava/lang/Class;
    move-object v13, v4

    array-length v13, v13

    move v5, v13

    .local v5, "len$":I
    const/4 v13, 0x0

    move v6, v13

    .local v6, "i$":I
    :goto_0
    move v13, v6

    move v14, v5

    if-ge v13, v14, :cond_3

    move-object v13, v4

    move v14, v6

    aget-object v13, v13, v14

    move-object v7, v13

    .line 304
    .local v7, "c":Ljava/lang/Class;
    new-instance v13, Ljavax/xml/bind/ContextFinder$1;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v7

    invoke-direct {v14, v15}, Ljavax/xml/bind/ContextFinder$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v13}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/ClassLoader;

    move-object v8, v13

    .line 309
    .local v8, "classLoader":Ljava/lang/ClassLoader;
    move-object v13, v7

    invoke-virtual {v13}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v13

    move-object v9, v13

    .line 310
    .local v9, "pkg":Ljava/lang/Package;
    move-object v13, v9

    if-nez v13, :cond_0

    .line 311
    .line 302
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 312
    :cond_0
    move-object v13, v9

    invoke-virtual {v13}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x2e

    const/16 v15, 0x2f

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 321
    .local v10, "packageName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/jaxb.properties"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 322
    .local v11, "resourceName":Ljava/lang/String;
    sget-object v13, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Trying to locate "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 323
    move-object v13, v8

    move-object v14, v11

    invoke-static {v13, v14}, Ljavax/xml/bind/ContextFinder;->loadJAXBProperties(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v13

    move-object v12, v13

    .line 324
    .local v12, "props":Ljava/util/Properties;
    move-object v13, v12

    if-nez v13, :cond_1

    .line 325
    sget-object v13, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string/jumbo v14, "  not found"

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 326
    goto :goto_1

    .line 327
    :cond_1
    sget-object v13, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string/jumbo v14, "  found"

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 328
    move-object v13, v12

    const-string/jumbo v14, "javax.xml.bind.context.factory"

    invoke-virtual {v13, v14}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 330
    move-object v13, v12

    const-string/jumbo v14, "javax.xml.bind.context.factory"

    invoke-virtual {v13, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    .line 331
    .local v3, "factoryClassName":Ljava/lang/String;
    move-object v13, v0

    move-object v14, v1

    move-object v15, v3

    invoke-static {v13, v14, v15}, Ljavax/xml/bind/ContextFinder;->newInstance([Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;)Ljavax/xml/bind/JAXBContext;

    move-result-object v13

    move-object v0, v13

    .line 376
    .end local v0    # "classes":[Ljava/lang/Class;
    .end local v4    # "arr$":[Ljava/lang/Class;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    .end local v7    # "c":Ljava/lang/Class;
    .end local v8    # "classLoader":Ljava/lang/ClassLoader;
    .end local v9    # "pkg":Ljava/lang/Package;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "resourceName":Ljava/lang/String;
    .end local v12    # "props":Ljava/util/Properties;
    :goto_2
    return-object v0

    .line 333
    .end local v3    # "factoryClassName":Ljava/lang/String;
    .restart local v0    # "classes":[Ljava/lang/Class;
    .restart local v4    # "arr$":[Ljava/lang/Class;
    .restart local v5    # "len$":I
    .restart local v6    # "i$":I
    .restart local v7    # "c":Ljava/lang/Class;
    .restart local v8    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v9    # "pkg":Ljava/lang/Package;
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "resourceName":Ljava/lang/String;
    .restart local v12    # "props":Ljava/util/Properties;
    :cond_2
    new-instance v13, Ljavax/xml/bind/JAXBException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const-string/jumbo v15, "ContextFinder.MissingProperty"

    move-object/from16 v16, v10

    const-string/jumbo v17, "javax.xml.bind.context.factory"

    invoke-static/range {v15 .. v17}, Ljavax/xml/bind/Messages;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 339
    .end local v7    # "c":Ljava/lang/Class;
    .end local v8    # "classLoader":Ljava/lang/ClassLoader;
    .end local v9    # "pkg":Ljava/lang/Package;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "resourceName":Ljava/lang/String;
    .end local v12    # "props":Ljava/util/Properties;
    :cond_3
    sget-object v13, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Checking system property "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 340
    new-instance v13, Ljavax/xml/bind/GetPropertyAction;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v2

    invoke-direct {v14, v15}, Ljavax/xml/bind/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v3, v13

    .line 341
    .restart local v3    # "factoryClassName":Ljava/lang/String;
    move-object v13, v3

    if-eqz v13, :cond_4

    .line 342
    sget-object v13, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "  found "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 343
    move-object v13, v0

    move-object v14, v1

    move-object v15, v3

    invoke-static {v13, v14, v15}, Ljavax/xml/bind/ContextFinder;->newInstance([Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;)Ljavax/xml/bind/JAXBContext;

    move-result-object v13

    move-object v0, v13

    goto :goto_2

    .line 345
    :cond_4
    sget-object v13, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string/jumbo v14, "  not found"

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 348
    sget-object v13, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string/jumbo v14, "Checking META-INF/services"

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 351
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const-string/jumbo v15, "META-INF/services/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    .line 352
    .local v5, "resource":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    move-object v6, v13

    .line 354
    .local v6, "classLoader":Ljava/lang/ClassLoader;
    move-object v13, v6

    if-nez v13, :cond_5

    .line 355
    move-object v13, v5

    invoke-static {v13}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    move-object v7, v13

    .line 359
    .local v7, "resourceURL":Ljava/net/URL;
    :goto_3
    move-object v13, v7

    if-eqz v13, :cond_6

    .line 360
    sget-object v13, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Reading "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 361
    new-instance v13, Ljava/io/BufferedReader;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Ljava/io/InputStreamReader;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v17

    const-string/jumbo v18, "UTF-8"

    invoke-direct/range {v16 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v13

    .line 362
    .local v4, "r":Ljava/io/BufferedReader;
    move-object v13, v4

    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    .line 363
    move-object v13, v0

    move-object v14, v1

    move-object v15, v3

    invoke-static {v13, v14, v15}, Ljavax/xml/bind/ContextFinder;->newInstance([Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;)Ljavax/xml/bind/JAXBContext;

    move-result-object v13

    move-object v0, v13

    goto/16 :goto_2

    .line 357
    .end local v7    # "resourceURL":Ljava/net/URL;
    .local v4, "arr$":[Ljava/lang/Class;
    :cond_5
    move-object v13, v6

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    move-object v7, v13

    .restart local v7    # "resourceURL":Ljava/net/URL;
    goto :goto_3

    .line 365
    :cond_6
    sget-object v13, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unable to find: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 372
    .line 375
    sget-object v13, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string/jumbo v14, "Trying to create the platform default provider"

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 376
    move-object v13, v0

    move-object v14, v1

    const-string/jumbo v15, "com.sun.xml.bind.v2.ContextFactory"

    invoke-static {v13, v14, v15}, Ljavax/xml/bind/ContextFinder;->newInstance([Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;)Ljavax/xml/bind/JAXBContext;

    move-result-object v13

    move-object v0, v13

    goto/16 :goto_2

    .line 367
    .end local v4    # "arr$":[Ljava/lang/Class;
    .end local v5    # "resource":Ljava/lang/String;
    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .end local v7    # "resourceURL":Ljava/net/URL;
    :catch_0
    move-exception v13

    move-object v5, v13

    .line 369
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v13, Ljavax/xml/bind/JAXBException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v5

    invoke-direct {v14, v15}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 370
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v13

    move-object v5, v13

    .line 371
    .local v5, "e":Ljava/io/IOException;
    new-instance v13, Ljavax/xml/bind/JAXBException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v5

    invoke-direct {v14, v15}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v13
.end method

.method private static handleClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/xml/bind/JAXBException;
    .locals 9

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "originalType":Ljava/lang/Class;
    move-object v1, p1

    .local v1, "targetType":Ljava/lang/Class;
    move-object v3, v1

    invoke-static {v3}, Ljavax/xml/bind/ContextFinder;->which(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v3

    move-object v2, v3

    .line 96
    .local v2, "targetTypeURL":Ljava/net/URL;
    new-instance v3, Ljavax/xml/bind/JAXBException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "JAXBContext.IllegalCast"

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string/jumbo v7, "javax/xml/bind/JAXBContext.class"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    move-object v7, v2

    invoke-static {v5, v6, v7}, Ljavax/xml/bind/Messages;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .end local v0    # "originalType":Ljava/lang/Class;
    return-object v0
.end method

.method private static handleInvocationTargetException(Ljava/lang/reflect/InvocationTargetException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x":Ljava/lang/reflect/InvocationTargetException;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    move-object v1, v2

    .line 69
    .local v1, "t":Ljava/lang/Throwable;
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 70
    move-object v2, v1

    instance-of v2, v2, Ljavax/xml/bind/JAXBException;

    if-eqz v2, :cond_0

    .line 72
    move-object v2, v1

    check-cast v2, Ljavax/xml/bind/JAXBException;

    throw v2

    .line 73
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1

    .line 75
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 76
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Error;

    if-eqz v2, :cond_2

    .line 77
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 79
    :cond_2
    return-void
.end method

.method private static loadJAXBProperties(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "classLoader":Ljava/lang/ClassLoader;
    move-object v1, p1

    .local v1, "propFileName":Ljava/lang/String;
    const/4 v5, 0x0

    move-object v2, v5

    .line 388
    .local v2, "props":Ljava/util/Properties;
    move-object v5, v0

    if-nez v5, :cond_1

    .line 389
    move-object v5, v1

    :try_start_0
    invoke-static {v5}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    move-object v3, v5

    .line 393
    .local v3, "url":Ljava/net/URL;
    :goto_0
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 394
    sget-object v5, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loading props from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 395
    new-instance v5, Ljava/util/Properties;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    move-object v2, v5

    .line 396
    move-object v5, v3

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v4, v5

    .line 397
    .local v4, "is":Ljava/io/InputStream;
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 398
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 403
    .line 405
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_0
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    return-object v0

    .line 391
    .end local v3    # "url":Ljava/net/URL;
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v3, v5

    .restart local v3    # "url":Ljava/net/URL;
    goto :goto_0

    .line 400
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 401
    .local v3, "ioe":Ljava/io/IOException;
    sget-object v5, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to load "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    new-instance v5, Ljavax/xml/bind/JAXBException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Ljavax/xml/bind/JAXBContext;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "contextPath":Ljava/lang/String;
    move-object v1, p1

    .local v1, "className":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "classLoader":Ljava/lang/ClassLoader;
    move-object/from16 v3, p3

    .local v3, "properties":Ljava/util/Map;
    move-object v7, v1

    move-object v8, v2

    :try_start_0
    invoke-static {v7, v8}, Ljavax/xml/bind/ContextFinder;->safeLoadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v7

    move-object v4, v7

    .line 121
    .local v4, "spiClass":Ljava/lang/Class;
    const/4 v7, 0x0

    move-object v5, v7

    .line 126
    .local v5, "context":Ljava/lang/Object;
    move-object v7, v4

    :try_start_1
    const-string/jumbo v8, "createContext"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    const-class v12, Ljava/lang/ClassLoader;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    const-class v12, Ljava/util/Map;

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v6, v7

    .line 128
    .local v6, "m":Ljava/lang/reflect/Method;
    move-object v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v2

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move-object v12, v3

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v7

    move-object v5, v7

    .line 131
    .line 133
    .end local v5    # "context":Ljava/lang/Object;
    .end local v6    # "m":Ljava/lang/reflect/Method;
    :goto_0
    move-object v7, v5

    if-nez v7, :cond_0

    .line 136
    move-object v7, v4

    :try_start_2
    const-string/jumbo v8, "createContext"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    const-class v12, Ljava/lang/ClassLoader;

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v6, v7

    .line 138
    .restart local v6    # "m":Ljava/lang/reflect/Method;
    move-object v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v2

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 141
    .end local v6    # "m":Ljava/lang/reflect/Method;
    :cond_0
    move-object v7, v5

    instance-of v7, v7, Ljavax/xml/bind/JAXBContext;

    if-nez v7, :cond_1

    .line 143
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljavax/xml/bind/JAXBContext;

    invoke-static {v7, v8}, Ljavax/xml/bind/ContextFinder;->handleClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/xml/bind/JAXBException;

    move-result-object v7

    .line 145
    :cond_1
    move-object v7, v5

    check-cast v7, Ljavax/xml/bind/JAXBContext;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v0, v7

    .end local v0    # "contextPath":Ljava/lang/String;
    return-object v0

    .line 129
    .restart local v0    # "contextPath":Ljava/lang/String;
    .restart local v5    # "context":Ljava/lang/Object;
    :catch_0
    move-exception v7

    move-object v6, v7

    goto :goto_0

    .line 146
    .end local v4    # "spiClass":Ljava/lang/Class;
    .end local v5    # "context":Ljava/lang/Object;
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 147
    .local v4, "x":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljavax/xml/bind/JAXBException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string/jumbo v9, "ContextFinder.ProviderNotFound"

    move-object v10, v1

    invoke-static {v9, v10}, Ljavax/xml/bind/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 150
    .end local v4    # "x":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v7

    move-object v4, v7

    .line 151
    .local v4, "x":Ljava/lang/reflect/InvocationTargetException;
    move-object v7, v4

    invoke-static {v7}, Ljavax/xml/bind/ContextFinder;->handleInvocationTargetException(Ljava/lang/reflect/InvocationTargetException;)V

    .line 154
    move-object v7, v4

    move-object v5, v7

    .line 155
    .local v5, "e":Ljava/lang/Throwable;
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 156
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    move-object v5, v7

    .line 158
    :cond_2
    new-instance v7, Ljavax/xml/bind/JAXBException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string/jumbo v9, "ContextFinder.CouldNotInstantiate"

    move-object v10, v1

    move-object v11, v5

    invoke-static {v9, v10, v11}, Ljavax/xml/bind/Messages;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 159
    .end local v4    # "x":Ljava/lang/reflect/InvocationTargetException;
    .end local v5    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v7

    move-object v4, v7

    .line 162
    .local v4, "x":Ljava/lang/RuntimeException;
    move-object v7, v4

    throw v7

    .line 163
    .end local v4    # "x":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v7

    move-object v4, v7

    .line 168
    .local v4, "x":Ljava/lang/Exception;
    new-instance v7, Ljavax/xml/bind/JAXBException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string/jumbo v9, "ContextFinder.CouldNotInstantiate"

    move-object v10, v1

    move-object v11, v4

    invoke-static {v9, v10, v11}, Ljavax/xml/bind/Messages;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method static newInstance([Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;)Ljavax/xml/bind/JAXBContext;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "classes":[Ljava/lang/Class;
    move-object/from16 v1, p1

    .local v1, "properties":Ljava/util/Map;
    move-object/from16 v2, p2

    .local v2, "className":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    move-object v3, v8

    .line 185
    .local v3, "cl":Ljava/lang/ClassLoader;
    move-object v8, v2

    move-object v9, v3

    :try_start_0
    invoke-static {v8, v9}, Ljavax/xml/bind/ContextFinder;->safeLoadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    move-object v4, v8

    .line 188
    .line 190
    .local v4, "spi":Ljava/lang/Class;
    sget-object v8, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 192
    sget-object v8, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "loaded "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-static {v10}, Ljavax/xml/bind/ContextFinder;->which(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 197
    :cond_0
    move-object v8, v4

    :try_start_1
    const-string/jumbo v9, "createContext"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    const-class v13, [Ljava/lang/Class;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    const-class v13, Ljava/util/Map;

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    move-object v5, v8

    .line 200
    .line 202
    .local v5, "m":Ljava/lang/reflect/Method;
    move-object v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x2

    :try_start_2
    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v0

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v1

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 203
    .local v6, "context":Ljava/lang/Object;
    move-object v8, v6

    instance-of v8, v8, Ljavax/xml/bind/JAXBContext;

    if-nez v8, :cond_1

    .line 205
    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljavax/xml/bind/JAXBContext;

    invoke-static {v8, v9}, Ljavax/xml/bind/ContextFinder;->handleClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/xml/bind/JAXBException;

    move-result-object v8

    throw v8
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    .line 208
    .end local v6    # "context":Ljava/lang/Object;
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 209
    .local v6, "e":Ljava/lang/IllegalAccessException;
    new-instance v8, Ljavax/xml/bind/JAXBException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v6

    invoke-direct {v9, v10}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 186
    .end local v4    # "spi":Ljava/lang/Class;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v8

    move-object v5, v8

    .line 187
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    new-instance v8, Ljavax/xml/bind/JAXBException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v5

    invoke-direct {v9, v10}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 198
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "spi":Ljava/lang/Class;
    :catch_2
    move-exception v8

    move-object v6, v8

    .line 199
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    new-instance v8, Ljavax/xml/bind/JAXBException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v6

    invoke-direct {v9, v10}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 207
    .local v5, "m":Ljava/lang/reflect/Method;
    .local v6, "context":Ljava/lang/Object;
    :cond_1
    move-object v8, v6

    :try_start_3
    check-cast v8, Ljavax/xml/bind/JAXBContext;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v8

    .end local v0    # "classes":[Ljava/lang/Class;
    return-object v0

    .line 210
    .end local v6    # "context":Ljava/lang/Object;
    .restart local v0    # "classes":[Ljava/lang/Class;
    :catch_3
    move-exception v8

    move-object v6, v8

    .line 211
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v8, v6

    invoke-static {v8}, Ljavax/xml/bind/ContextFinder;->handleInvocationTargetException(Ljava/lang/reflect/InvocationTargetException;)V

    .line 213
    move-object v8, v6

    move-object v7, v8

    .line 214
    .local v7, "x":Ljava/lang/Throwable;
    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 215
    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v8

    move-object v7, v8

    .line 217
    :cond_2
    new-instance v8, Ljavax/xml/bind/JAXBException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v7

    invoke-direct {v9, v10}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method private static safeLoadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "className":Ljava/lang/String;
    move-object v1, p1

    .local v1, "classLoader":Ljava/lang/ClassLoader;
    sget-object v4, Ljavax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Trying to load "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 470
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    move-object v2, v4

    .line 471
    .local v2, "s":Ljava/lang/SecurityManager;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 472
    move-object v4, v0

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    move v3, v4

    .line 473
    .local v3, "i":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 474
    move-object v4, v2

    move-object v5, v0

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    .line 478
    .end local v3    # "i":I
    :cond_0
    move-object v4, v1

    if-nez v4, :cond_1

    .line 479
    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    .line 486
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/SecurityManager;
    :goto_0
    return-object v0

    .line 481
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v2    # "s":Ljava/lang/SecurityManager;
    :cond_1
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 483
    .end local v2    # "s":Ljava/lang/SecurityManager;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 485
    .local v2, "se":Ljava/lang/SecurityException;
    const-string/jumbo v4, "com.sun.xml.bind.v2.ContextFactory"

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 486
    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 488
    :cond_2
    move-object v4, v2

    throw v4
.end method

.method static which(Ljava/lang/Class;)Ljava/net/URL;
    .locals 3

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "clazz":Ljava/lang/Class;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v2}, Ljavax/xml/bind/ContextFinder;->which(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/net/URL;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "clazz":Ljava/lang/Class;
    return-object v0
.end method

.method static which(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/net/URL;
    .locals 8

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "clazz":Ljava/lang/Class;
    move-object v1, p1

    .local v1, "loader":Ljava/lang/ClassLoader;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 425
    .local v2, "classnameAsResource":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 426
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v1, v3

    .line 429
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "clazz":Ljava/lang/Class;
    return-object v0
.end method
