.class Lorg/apache/xerces/stax/DefaultNamespaceContext$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field more:Z

.field private final this$0:Lorg/apache/xerces/stax/DefaultNamespaceContext;


# direct methods
.method constructor <init>(Lorg/apache/xerces/stax/DefaultNamespaceContext;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/stax/DefaultNamespaceContext$2;->this$0:Lorg/apache/xerces/stax/DefaultNamespaceContext;

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xerces/stax/DefaultNamespaceContext$2;->more:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/stax/DefaultNamespaceContext$2;->more:Z

    move v0, v1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/stax/DefaultNamespaceContext$2;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/stax/DefaultNamespaceContext$2;->more:Z

    const-string/jumbo v1, "xmlns"

    move-object v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 4

    move-object v0, p0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method
