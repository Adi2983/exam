.class final Lorg/apache/xerces/parsers/SecuritySupport;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    new-instance v0, Lorg/apache/xerces/parsers/SecuritySupport$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/parsers/SecuritySupport$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static getFileExists(Ljava/io/File;)Z
    .locals 5

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/parsers/SecuritySupport$7;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/apache/xerces/parsers/SecuritySupport$7;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    move-object v0, p0

    :try_start_0
    new-instance v2, Lorg/apache/xerces/parsers/SecuritySupport$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lorg/apache/xerces/parsers/SecuritySupport$5;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    return-object v0

    :catch_0
    move-exception v2

    move-object v1, v2

    move-object v2, v1

    invoke-virtual {v2}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v2

    check-cast v2, Ljava/io/FileNotFoundException;

    throw v2
.end method

.method static getLastModified(Ljava/io/File;)J
    .locals 5

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/parsers/SecuritySupport$8;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/apache/xerces/parsers/SecuritySupport$8;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method static getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 5

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/parsers/SecuritySupport$3;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/apache/xerces/parsers/SecuritySupport$3;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    move-object v0, v1

    return-object v0
.end method

.method static getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/parsers/SecuritySupport$6;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/parsers/SecuritySupport$6;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    move-object v0, v2

    return-object v0
.end method

.method static getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    new-instance v0, Lorg/apache/xerces/parsers/SecuritySupport$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/parsers/SecuritySupport$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/parsers/SecuritySupport$4;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/apache/xerces/parsers/SecuritySupport$4;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
