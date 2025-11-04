.class public final Lorg/apache/xerces/util/NamespaceSupport$Prefixes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/NamespaceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "Prefixes"
.end annotation


# instance fields
.field private counter:I

.field private prefixes:[Ljava/lang/String;

.field private size:I

.field private final this$0:Lorg/apache/xerces/util/NamespaceSupport;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/util/NamespaceSupport;[Ljava/lang/String;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;->this$0:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;->counter:I

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;->size:I

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;->prefixes:[Ljava/lang/String;

    move-object v4, v0

    move v5, v3

    iput v5, v4, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;->size:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;->counter:I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;->size:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 8

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;->counter:I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;->size:I

    if-ge v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;->this$0:Lorg/apache/xerces/util/NamespaceSupport;

    iget-object v1, v1, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;->counter:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;->counter:I

    aget-object v1, v1, v2

    move-object v0, v1

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "Illegal access to Namespace prefixes enumeration."

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    move-object v0, p0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v3

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;->size:I

    if-lt v3, v4, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;->prefixes:[Ljava/lang/String;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v3, v1

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
