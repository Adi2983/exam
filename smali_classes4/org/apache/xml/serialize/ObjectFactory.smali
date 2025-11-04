.class final Lorg/apache/xml/serialize/ObjectFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serialize/ObjectFactory$ConfigurationError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field private static final DEFAULT_PROPERTIES_FILENAME:Ljava/lang/String; = "xerces.properties"

.field static class$org$apache$xml$serialize$ObjectFactory:Ljava/lang/Class;

.field private static fLastModified:J

.field private static fXercesProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/apache/xml/serialize/ObjectFactory;->isDebugEnabled()Z

    move-result v0

    sput-boolean v0, Lorg/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/apache/xml/serialize/ObjectFactory;->fLastModified:J

    return-void
.end method

.method constructor <init>()V
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

.method static createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lorg/apache/xml/serialize/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-boolean v18, Lorg/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-eqz v18, :cond_0

    const-string/jumbo v18, "debug is on"

    invoke-static/range {v18 .. v18}, Lorg/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lorg/apache/xml/serialize/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    move-object/from16 v3, v18

    move-object/from16 v18, v0

    :try_start_0
    invoke-static/range {v18 .. v18}, Lorg/apache/xml/serialize/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v4, v18

    move-object/from16 v18, v4

    if-eqz v18, :cond_2

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2

    sget-boolean v18, Lorg/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-eqz v18, :cond_1

    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v19, "found system property, value="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v18, v4

    move-object/from16 v19, v3

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lorg/apache/xml/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    move-object/from16 v0, v18

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const/16 v18, 0x0

    move-object/from16 v4, v18

    move-object/from16 v18, v1

    if-nez v18, :cond_d

    const/16 v18, 0x0

    move-object/from16 v5, v18

    const/16 v18, 0x0

    move/from16 v6, v18

    :try_start_1
    const-string/jumbo v18, "java.home"

    invoke-static/range {v18 .. v18}, Lorg/apache/xml/serialize/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v7, v18

    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v19, v7

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string/jumbo v19, "lib"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string/jumbo v19, "xerces.properties"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v1, v18

    new-instance v18, Ljava/io/File;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v1

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, v18

    move-object/from16 v18, v5

    invoke-static/range {v18 .. v18}, Lorg/apache/xml/serialize/SecuritySupport;->getFileExists(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v18

    move/from16 v6, v18

    :goto_2
    sget-object v18, Lorg/apache/xml/serialize/ObjectFactory;->class$org$apache$xml$serialize$ObjectFactory:Ljava/lang/Class;

    if-nez v18, :cond_8

    const-string/jumbo v18, "org.apache.xml.serialize.ObjectFactory"

    invoke-static/range {v18 .. v18}, Lorg/apache/xml/serialize/ObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    sput-object v19, Lorg/apache/xml/serialize/ObjectFactory;->class$org$apache$xml$serialize$ObjectFactory:Ljava/lang/Class;

    :goto_3
    move-object/from16 v7, v18

    move-object/from16 v18, v7

    monitor-enter v18

    const/16 v18, 0x0

    move/from16 v8, v18

    const/16 v18, 0x0

    move-object/from16 v9, v18

    :try_start_2
    sget-wide v18, Lorg/apache/xml/serialize/ObjectFactory;->fLastModified:J

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-ltz v18, :cond_a

    move/from16 v18, v6

    if-eqz v18, :cond_9

    sget-wide v18, Lorg/apache/xml/serialize/ObjectFactory;->fLastModified:J

    move-object/from16 v20, v5

    invoke-static/range {v20 .. v20}, Lorg/apache/xml/serialize/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v20

    move-wide/from16 v24, v20

    move-wide/from16 v20, v24

    move-wide/from16 v22, v24

    sput-wide v22, Lorg/apache/xml/serialize/ObjectFactory;->fLastModified:J

    cmp-long v18, v18, v20

    if-gez v18, :cond_9

    const/16 v18, 0x1

    move/from16 v8, v18

    :cond_3
    :goto_4
    move/from16 v18, v8

    if-eqz v18, :cond_4

    new-instance v18, Ljava/util/Properties;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Ljava/util/Properties;-><init>()V

    sput-object v18, Lorg/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    move-object/from16 v18, v5

    invoke-static/range {v18 .. v18}, Lorg/apache/xml/serialize/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v18

    move-object/from16 v9, v18

    sget-object v18, Lorg/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    move-object/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    move-object/from16 v18, v9

    if-eqz v18, :cond_5

    move-object/from16 v18, v9

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    :goto_5
    move-object/from16 v18, v7

    :try_start_4
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-object v18, Lorg/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    if-eqz v18, :cond_6

    sget-object v18, Lorg/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v4, v18

    :cond_6
    :goto_6
    move-object/from16 v18, v4

    if-eqz v18, :cond_11

    sget-boolean v18, Lorg/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-eqz v18, :cond_7

    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v19, "found in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v19, v1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string/jumbo v19, ", value="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v18, v4

    move-object/from16 v19, v3

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lorg/apache/xml/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    goto/16 :goto_0

    :catch_0
    move-exception v18

    move-object/from16 v4, v18

    goto/16 :goto_1

    :catch_1
    move-exception v18

    move-object/from16 v7, v18

    const-wide/16 v18, -0x1

    sput-wide v18, Lorg/apache/xml/serialize/ObjectFactory;->fLastModified:J

    const/16 v18, 0x0

    sput-object v18, Lorg/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    goto/16 :goto_2

    :cond_8
    sget-object v18, Lorg/apache/xml/serialize/ObjectFactory;->class$org$apache$xml$serialize$ObjectFactory:Ljava/lang/Class;

    goto/16 :goto_3

    :cond_9
    move/from16 v18, v6

    if-nez v18, :cond_3

    const-wide/16 v18, -0x1

    :try_start_5
    sput-wide v18, Lorg/apache/xml/serialize/ObjectFactory;->fLastModified:J

    const/16 v18, 0x0

    sput-object v18, Lorg/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    goto/16 :goto_4

    :cond_a
    move/from16 v18, v6

    if-eqz v18, :cond_3

    const/16 v18, 0x1

    move/from16 v8, v18

    move-object/from16 v18, v5

    invoke-static/range {v18 .. v18}, Lorg/apache/xml/serialize/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v18

    sput-wide v18, Lorg/apache/xml/serialize/ObjectFactory;->fLastModified:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    :catch_2
    move-exception v18

    move-object/from16 v10, v18

    const/16 v18, 0x0

    :try_start_6
    sput-object v18, Lorg/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    const-wide/16 v18, -0x1

    sput-wide v18, Lorg/apache/xml/serialize/ObjectFactory;->fLastModified:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v18, v9

    if-eqz v18, :cond_b

    move-object/from16 v18, v9

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_b
    :goto_7
    goto/16 :goto_5

    :catchall_0
    move-exception v18

    move-object/from16 v11, v18

    move-object/from16 v18, v9

    if-eqz v18, :cond_c

    move-object/from16 v18, v9

    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_c
    :goto_8
    move-object/from16 v18, v11

    :try_start_9
    throw v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v18

    move-object/from16 v14, v18

    move-object/from16 v18, v7

    monitor-exit v18

    move-object/from16 v18, v14

    throw v18

    :cond_d
    const/16 v18, 0x0

    move-object/from16 v5, v18

    :try_start_a
    new-instance v18, Ljava/io/File;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v1

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Lorg/apache/xml/serialize/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v18

    move-object/from16 v5, v18

    new-instance v18, Ljava/util/Properties;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Ljava/util/Properties;-><init>()V

    move-object/from16 v6, v18

    move-object/from16 v18, v6

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    move-object/from16 v18, v6

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v18

    move-object/from16 v4, v18

    move-object/from16 v18, v5

    if-eqz v18, :cond_e

    move-object/from16 v18, v5

    :try_start_b
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :cond_e
    :goto_9
    goto/16 :goto_6

    :catch_3
    move-exception v18

    move-object/from16 v6, v18

    move-object/from16 v18, v5

    if-eqz v18, :cond_f

    move-object/from16 v18, v5

    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_f
    :goto_a
    goto/16 :goto_6

    :catchall_2
    move-exception v18

    move-object/from16 v15, v18

    move-object/from16 v18, v5

    if-eqz v18, :cond_10

    move-object/from16 v18, v5

    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :cond_10
    :goto_b
    move-object/from16 v18, v15

    throw v18

    :cond_11
    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/apache/xml/serialize/ObjectFactory;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    move-object/from16 v18, v5

    if-eqz v18, :cond_12

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    goto/16 :goto_0

    :cond_12
    move-object/from16 v18, v2

    if-nez v18, :cond_13

    new-instance v18, Lorg/apache/xml/serialize/ObjectFactory$ConfigurationError;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v21, "Provider for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string/jumbo v21, " cannot be found"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lorg/apache/xml/serialize/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v18

    :cond_13
    sget-boolean v18, Lorg/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-eqz v18, :cond_14

    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v19, "using fallback, value="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v19, v2

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    :cond_14
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lorg/apache/xml/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    goto/16 :goto_0

    :catch_4
    move-exception v18

    move-object/from16 v13, v18

    goto/16 :goto_8

    :catch_5
    move-exception v18

    move-object/from16 v13, v18

    goto/16 :goto_7

    :catch_6
    move-exception v18

    move-object/from16 v13, v18

    goto/16 :goto_5

    :catch_7
    move-exception v18

    move-object/from16 v17, v18

    goto/16 :goto_a

    :catch_8
    move-exception v18

    move-object/from16 v17, v18

    goto/16 :goto_b

    :catch_9
    move-exception v18

    move-object/from16 v17, v18

    goto/16 :goto_9
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    sget-boolean v1, Lorg/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "XERCES: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static findClassLoader()Ljava/lang/ClassLoader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    invoke-static {}, Lorg/apache/xml/serialize/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v0, v4

    invoke-static {}, Lorg/apache/xml/serialize/SecuritySupport;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    move-object v2, v4

    :goto_0
    move-object v4, v0

    move-object v5, v2

    if-ne v4, v5, :cond_3

    sget-object v4, Lorg/apache/xml/serialize/ObjectFactory;->class$org$apache$xml$serialize$ObjectFactory:Ljava/lang/Class;

    if-nez v4, :cond_0

    const-string/jumbo v4, "org.apache.xml.serialize.ObjectFactory"

    invoke-static {v4}, Lorg/apache/xml/serialize/ObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    sput-object v5, Lorg/apache/xml/serialize/ObjectFactory;->class$org$apache$xml$serialize$ObjectFactory:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v3, v4

    move-object v4, v1

    move-object v2, v4

    :goto_2
    move-object v4, v3

    move-object v5, v2

    if-ne v4, v5, :cond_1

    move-object v4, v1

    move-object v0, v4

    :goto_3
    return-object v0

    :cond_0
    sget-object v4, Lorg/apache/xml/serialize/ObjectFactory;->class$org$apache$xml$serialize$ObjectFactory:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    move-object v4, v2

    if-nez v4, :cond_2

    move-object v4, v3

    move-object v0, v4

    goto :goto_3

    :cond_2
    move-object v4, v2

    invoke-static {v4}, Lorg/apache/xml/serialize/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v2, v4

    goto :goto_2

    :cond_3
    move-object v4, v2

    if-nez v4, :cond_4

    move-object v4, v0

    move-object v0, v4

    goto :goto_3

    :cond_4
    move-object v4, v2

    invoke-static {v4}, Lorg/apache/xml/serialize/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v2, v4

    goto :goto_0
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v12, "META-INF/services/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    const/4 v11, 0x0

    move-object v2, v11

    invoke-static {}, Lorg/apache/xml/serialize/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object v3, v11

    move-object v11, v3

    move-object v12, v1

    invoke-static {v11, v12}, Lorg/apache/xml/serialize/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    move-object v2, v11

    move-object v11, v2

    if-nez v11, :cond_0

    sget-object v11, Lorg/apache/xml/serialize/ObjectFactory;->class$org$apache$xml$serialize$ObjectFactory:Ljava/lang/Class;

    if-nez v11, :cond_1

    const-string/jumbo v11, "org.apache.xml.serialize.ObjectFactory"

    invoke-static {v11}, Lorg/apache/xml/serialize/ObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    sput-object v12, Lorg/apache/xml/serialize/ObjectFactory;->class$org$apache$xml$serialize$ObjectFactory:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object v4, v11

    move-object v11, v3

    move-object v12, v4

    if-eq v11, v12, :cond_0

    move-object v11, v4

    move-object v3, v11

    move-object v11, v3

    move-object v12, v1

    invoke-static {v11, v12}, Lorg/apache/xml/serialize/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    move-object v2, v11

    :cond_0
    move-object v11, v2

    if-nez v11, :cond_2

    const/4 v11, 0x0

    move-object v0, v11

    :goto_1
    return-object v0

    :cond_1
    sget-object v11, Lorg/apache/xml/serialize/ObjectFactory;->class$org$apache$xml$serialize$ObjectFactory:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    sget-boolean v11, Lorg/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v12, "found jar resource="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string/jumbo v12, " using ClassLoader: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/io/InputStreamReader;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v2

    const-string/jumbo v16, "UTF-8"

    invoke-direct/range {v14 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v14, 0x50

    invoke-direct {v12, v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v11

    :goto_2
    const/4 v11, 0x0

    move-object v5, v11

    move-object v11, v4

    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    move-object v5, v11

    move-object v11, v4

    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    move-object v11, v5

    if-eqz v11, :cond_5

    const-string/jumbo v11, ""

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    sget-boolean v11, Lorg/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v12, "found in resource, value="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    :cond_4
    move-object v11, v5

    move-object v12, v3

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xml/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    goto/16 :goto_1

    :catch_0
    move-exception v11

    move-object v5, v11

    new-instance v11, Ljava/io/BufferedReader;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    new-instance v13, Ljava/io/InputStreamReader;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v2

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v14, 0x50

    invoke-direct {v12, v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v4, v11

    goto :goto_2

    :catch_1
    move-exception v11

    move-object v6, v11

    const/4 v11, 0x0

    move-object v7, v11

    move-object v11, v4

    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    move-object v11, v7

    move-object v0, v11

    goto/16 :goto_1

    :catchall_0
    move-exception v11

    move-object v8, v11

    move-object v11, v4

    :try_start_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    move-object v11, v8

    throw v11

    :cond_5
    const/4 v11, 0x0

    move-object v0, v11

    goto/16 :goto_1

    :catch_2
    move-exception v11

    move-object v10, v11

    goto :goto_4

    :catch_3
    move-exception v11

    move-object v10, v11

    goto :goto_5

    :catch_4
    move-exception v11

    move-object v10, v11

    goto :goto_3
.end method

.method static findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lorg/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    if-eqz v7, :cond_1

    move-object v7, v0

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move v4, v7

    move-object v7, v0

    move-object v5, v7

    move v7, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    move-object v7, v0

    const/4 v8, 0x0

    move v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    :cond_0
    move-object v7, v3

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    :cond_1
    move-object v7, v1

    if-nez v7, :cond_2

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v4, v7

    :goto_0
    move-object v7, v4

    move-object v0, v7

    return-object v0

    :cond_2
    move-object v7, v1

    move-object v8, v0

    :try_start_0
    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v4, v7

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v5, v7

    move v7, v2

    if-eqz v7, :cond_6

    sget-object v7, Lorg/apache/xml/serialize/ObjectFactory;->class$org$apache$xml$serialize$ObjectFactory:Ljava/lang/Class;

    if-nez v7, :cond_3

    const-string/jumbo v7, "org.apache.xml.serialize.ObjectFactory"

    invoke-static {v7}, Lorg/apache/xml/serialize/ObjectFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    sput-object v8, Lorg/apache/xml/serialize/ObjectFactory;->class$org$apache$xml$serialize$ObjectFactory:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    if-nez v7, :cond_4

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v4, v7

    goto :goto_0

    :cond_3
    sget-object v7, Lorg/apache/xml/serialize/ObjectFactory;->class$org$apache$xml$serialize$ObjectFactory:Ljava/lang/Class;

    goto :goto_1

    :cond_4
    move-object v7, v1

    move-object v8, v6

    if-eq v7, v8, :cond_5

    move-object v7, v6

    move-object v1, v7

    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v4, v7

    goto :goto_0

    :cond_5
    move-object v7, v5

    throw v7

    :cond_6
    move-object v7, v5

    throw v7
.end method

.method private static isDebugEnabled()Z
    .locals 3

    :try_start_0
    const-string/jumbo v1, "xerces.debug"

    invoke-static {v1}, Lorg/apache/xml/serialize/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    move-object v1, v0

    if-eqz v1, :cond_0

    const-string/jumbo v1, "false"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    :try_start_0
    invoke-static {v5, v6, v7}, Lorg/apache/xml/serialize/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    sget-boolean v5, Lorg/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "created new instance of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, " using ClassLoader: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    move-object v5, v4

    move-object v0, v5

    return-object v0

    :catch_0
    move-exception v5

    move-object v3, v5

    new-instance v5, Lorg/apache/xml/serialize/ObjectFactory$ConfigurationError;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, "Provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lorg/apache/xml/serialize/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    :catch_1
    move-exception v5

    move-object v4, v5

    new-instance v5, Lorg/apache/xml/serialize/ObjectFactory$ConfigurationError;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, "Provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, " could not be instantiated: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/apache/xml/serialize/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method
