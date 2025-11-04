.class public Lorg/apache/xerces/dom/DOMImplementationListImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/DOMImplementationList;


# instance fields
.field private final fImplementations:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMImplementationListImpl;->fImplementations:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMImplementationListImpl;->fImplementations:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMImplementationListImpl;->fImplementations:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMImplementationListImpl;->fImplementations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public item(I)Lorg/w3c/dom/DOMImplementation;
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/DOMImplementationListImpl;->getLength()I

    move-result v3

    move v2, v3

    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DOMImplementationListImpl;->fImplementations:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/DOMImplementation;

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method
