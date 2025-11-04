.class abstract Lorg/apache/xerces/stax/events/ElementImpl;
.super Lorg/apache/xerces/stax/events/XMLEventImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/stax/events/ElementImpl$NoRemoveIterator;
    }
.end annotation


# instance fields
.field private final fName:Ljavax/xml/namespace/QName;

.field private final fNamespaces:Ljava/util/List;


# direct methods
.method constructor <init>(Ljavax/xml/namespace/QName;ZLjava/util/Iterator;Ljavax/xml/stream/Location;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    move v7, v2

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/stax/events/XMLEventImpl;-><init>(ILjavax/xml/stream/Location;)V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lorg/apache/xerces/stax/events/ElementImpl;->fName:Ljavax/xml/namespace/QName;

    move-object v6, v3

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lorg/apache/xerces/stax/events/ElementImpl;->fNamespaces:Ljava/util/List;

    :cond_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/xml/stream/events/Namespace;

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/stax/events/ElementImpl;->fNamespaces:Ljava/util/List;

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    :goto_1
    return-void

    :cond_1
    const/4 v7, 0x2

    goto :goto_0

    :cond_2
    move-object v6, v0

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v7, v6, Lorg/apache/xerces/stax/events/ElementImpl;->fNamespaces:Ljava/util/List;

    goto :goto_1
.end method

.method static createImmutableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 5

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/stax/events/ElementImpl$NoRemoveIterator;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/apache/xerces/stax/events/ElementImpl$NoRemoveIterator;-><init>(Ljava/util/Iterator;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public final getName()Ljavax/xml/namespace/QName;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/ElementImpl;->fName:Ljavax/xml/namespace/QName;

    move-object v0, v1

    return-object v0
.end method

.method public final getNamespaces()Ljava/util/Iterator;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/ElementImpl;->fNamespaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xerces/stax/events/ElementImpl;->createImmutableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
