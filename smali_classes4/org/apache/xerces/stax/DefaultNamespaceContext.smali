.class public final Lorg/apache/xerces/stax/DefaultNamespaceContext;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# static fields
.field private static final DEFAULT_NAMESPACE_CONTEXT_INSTANCE:Lorg/apache/xerces/stax/DefaultNamespaceContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/stax/DefaultNamespaceContext;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/stax/DefaultNamespaceContext;-><init>()V

    sput-object v0, Lorg/apache/xerces/stax/DefaultNamespaceContext;->DEFAULT_NAMESPACE_CONTEXT_INSTANCE:Lorg/apache/xerces/stax/DefaultNamespaceContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/xerces/stax/DefaultNamespaceContext;
    .locals 1

    sget-object v0, Lorg/apache/xerces/stax/DefaultNamespaceContext;->DEFAULT_NAMESPACE_CONTEXT_INSTANCE:Lorg/apache/xerces/stax/DefaultNamespaceContext;

    return-object v0
.end method


# virtual methods
.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Prefix cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string/jumbo v2, "xml"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "http://www.w3.org/XML/1998/namespace"

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v2, "xmlns"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "http://www.w3.org/2000/xmlns/"

    move-object v0, v2

    goto :goto_0

    :cond_2
    const-string/jumbo v2, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Namespace URI cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string/jumbo v2, "http://www.w3.org/XML/1998/namespace"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "xml"

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v2, "http://www.w3.org/2000/xmlns/"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "xmlns"

    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Namespace URI cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string/jumbo v2, "http://www.w3.org/XML/1998/namespace"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/apache/xerces/stax/DefaultNamespaceContext$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lorg/apache/xerces/stax/DefaultNamespaceContext$1;-><init>(Lorg/apache/xerces/stax/DefaultNamespaceContext;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v2, "http://www.w3.org/2000/xmlns/"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lorg/apache/xerces/stax/DefaultNamespaceContext$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lorg/apache/xerces/stax/DefaultNamespaceContext$2;-><init>(Lorg/apache/xerces/stax/DefaultNamespaceContext;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
