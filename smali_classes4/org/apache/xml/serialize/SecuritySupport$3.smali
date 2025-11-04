.class Lorg/apache/xml/serialize/SecuritySupport$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final val$cl:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xml/serialize/SecuritySupport$3;->val$cl:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xml/serialize/SecuritySupport$3;->val$cl:Ljava/lang/ClassLoader;

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xml/serialize/SecuritySupport$3;->val$cl:Ljava/lang/ClassLoader;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_1
    move-object v0, v3

    return-object v0

    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    goto :goto_1
.end method
