.class public Lorg/apache/xerces/dom/DOMImplementationSourceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/DOMImplementationSource;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDOMImplementation(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementation;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/DOMImplementationSourceImpl;->testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/apache/xerces/dom/DOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/DOMImplementationSourceImpl;->testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getDOMImplementationList(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementationList;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v4

    move-object v2, v4

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/DOMImplementationSourceImpl;->testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    :cond_0
    invoke-static {}, Lorg/apache/xerces/dom/DOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v4

    move-object v2, v4

    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/DOMImplementationSourceImpl;->testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    :cond_1
    new-instance v4, Lorg/apache/xerces/dom/DOMImplementationListImpl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Lorg/apache/xerces/dom/DOMImplementationListImpl;-><init>(Ljava/util/ArrayList;)V

    move-object v0, v4

    return-object v0
.end method

.method testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v8, Ljava/util/StringTokenizer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v2

    invoke-direct {v9, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    move-object v3, v8

    const/4 v8, 0x0

    move-object v4, v8

    const/4 v8, 0x0

    move-object v5, v8

    move-object v8, v3

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v3

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    :cond_0
    :goto_0
    move-object v8, v4

    if-nez v8, :cond_1

    const/4 v8, 0x1

    move v0, v8

    :goto_1
    return v0

    :cond_1
    const/4 v8, 0x0

    move v6, v8

    move-object v8, v3

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v3

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    move-object v8, v5

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v7, v8

    move v8, v7

    packed-switch v8, :pswitch_data_0

    :goto_2
    move v8, v6

    if-eqz v8, :cond_5

    move-object v8, v1

    move-object v9, v4

    move-object v10, v5

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x0

    move v0, v8

    goto :goto_1

    :pswitch_0
    const/4 v8, 0x1

    move v6, v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    move-object v5, v8

    goto :goto_2

    :cond_3
    move-object v8, v3

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v3

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    move-object v4, v8

    goto :goto_0

    :cond_5
    move-object v8, v1

    move-object v9, v4

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x0

    move v0, v8

    goto :goto_1

    :cond_6
    move-object v8, v5

    move-object v4, v8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
