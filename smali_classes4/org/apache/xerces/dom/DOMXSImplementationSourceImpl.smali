.class public Lorg/apache/xerces/dom/DOMXSImplementationSourceImpl;
.super Lorg/apache/xerces/dom/DOMImplementationSourceImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/DOMImplementationSourceImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDOMImplementation(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementation;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lorg/apache/xerces/dom/DOMImplementationSourceImpl;->getDOMImplementation(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementation;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/apache/xerces/dom/PSVIDOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/DOMXSImplementationSourceImpl;->testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/xerces/impl/xs/XSImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/DOMXSImplementationSourceImpl;->testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getDOMImplementationList(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementationList;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Lorg/apache/xerces/dom/DOMImplementationSourceImpl;->getDOMImplementationList(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementationList;

    move-result-object v6

    move-object v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v3

    invoke-interface {v7}, Lorg/w3c/dom/DOMImplementationList;->getLength()I

    move-result v7

    if-lt v6, v7, :cond_2

    invoke-static {}, Lorg/apache/xerces/dom/PSVIDOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v6

    move-object v5, v6

    move-object v6, v0

    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DOMXSImplementationSourceImpl;->testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    :cond_0
    invoke-static {}, Lorg/apache/xerces/impl/xs/XSImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v6

    move-object v5, v6

    move-object v6, v0

    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DOMXSImplementationSourceImpl;->testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    :cond_1
    new-instance v6, Lorg/apache/xerces/dom/DOMImplementationListImpl;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-direct {v7, v8}, Lorg/apache/xerces/dom/DOMImplementationListImpl;-><init>(Ljava/util/ArrayList;)V

    move-object v0, v6

    return-object v0

    :cond_2
    move-object v6, v2

    move-object v7, v3

    move v8, v4

    invoke-interface {v7, v8}, Lorg/w3c/dom/DOMImplementationList;->item(I)Lorg/w3c/dom/DOMImplementation;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
