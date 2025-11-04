.class Lorg/apache/html/dom/SecuritySupport$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final val$f:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/html/dom/SecuritySupport$8;->val$f:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 7

    move-object v1, p0

    new-instance v2, Ljava/lang/Long;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/html/dom/SecuritySupport$8;->val$f:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v2

    return-object v1
.end method
