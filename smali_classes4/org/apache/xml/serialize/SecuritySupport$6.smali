.class Lorg/apache/xml/serialize/SecuritySupport$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final val$cl:Ljava/lang/ClassLoader;

.field private final val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xml/serialize/SecuritySupport$6;->val$cl:Ljava/lang/ClassLoader;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xml/serialize/SecuritySupport$6;->val$name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/SecuritySupport$6;->val$cl:Ljava/lang/ClassLoader;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/SecuritySupport$6;->val$name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/SecuritySupport$6;->val$cl:Ljava/lang/ClassLoader;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/SecuritySupport$6;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method
