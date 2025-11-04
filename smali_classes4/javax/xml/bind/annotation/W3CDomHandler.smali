.class public Ljavax/xml/bind/annotation/W3CDomHandler;
.super Ljava/lang/Object;
.source "W3CDomHandler.java"

# interfaces
.implements Ljavax/xml/bind/annotation/DomHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/xml/bind/annotation/DomHandler",
        "<",
        "Lorg/w3c/dom/Element;",
        "Ljavax/xml/transform/dom/DOMResult;",
        ">;"
    }
.end annotation


# instance fields
.field private builder:Ljavax/xml/parsers/DocumentBuilder;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavax/xml/bind/annotation/W3CDomHandler;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljavax/xml/parsers/DocumentBuilder;)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    move-object v1, p1

    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v2, v1

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 50
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/annotation/W3CDomHandler;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic createUnmarshaller(Ljavax/xml/bind/ValidationEventHandler;)Ljavax/xml/transform/Result;
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    move-object v1, p1

    .local v1, "x0":Ljavax/xml/bind/ValidationEventHandler;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavax/xml/bind/annotation/W3CDomHandler;->createUnmarshaller(Ljavax/xml/bind/ValidationEventHandler;)Ljavax/xml/transform/dom/DOMResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    return-object v0
.end method

.method public createUnmarshaller(Ljavax/xml/bind/ValidationEventHandler;)Ljavax/xml/transform/dom/DOMResult;
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    move-object v1, p1

    .local v1, "errorHandler":Ljavax/xml/bind/ValidationEventHandler;
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/bind/annotation/W3CDomHandler;->builder:Ljavax/xml/parsers/DocumentBuilder;

    if-nez v2, :cond_0

    .line 63
    new-instance v2, Ljavax/xml/transform/dom/DOMResult;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljavax/xml/transform/dom/DOMResult;-><init>()V

    move-object v0, v2

    .line 65
    .end local v0    # "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    :cond_0
    new-instance v2, Ljavax/xml/transform/dom/DOMResult;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Ljavax/xml/bind/annotation/W3CDomHandler;->builder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/xml/transform/dom/DOMResult;-><init>(Lorg/w3c/dom/Node;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/annotation/W3CDomHandler;->builder:Ljavax/xml/parsers/DocumentBuilder;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    return-object v0
.end method

.method public bridge synthetic getElement(Ljavax/xml/transform/Result;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    move-object v1, p1

    .local v1, "x0":Ljavax/xml/transform/Result;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {v2, v3}, Ljavax/xml/bind/annotation/W3CDomHandler;->getElement(Ljavax/xml/transform/dom/DOMResult;)Lorg/w3c/dom/Element;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    return-object v0
.end method

.method public getElement(Ljavax/xml/transform/dom/DOMResult;)Lorg/w3c/dom/Element;
    .locals 7

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    move-object v1, p1

    .local v1, "r":Ljavax/xml/transform/dom/DOMResult;
    move-object v3, v1

    invoke-virtual {v3}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    .line 72
    .local v2, "n":Lorg/w3c/dom/Node;
    move-object v3, v2

    instance-of v3, v3, Lorg/w3c/dom/Document;

    if-eqz v3, :cond_0

    .line 73
    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v0, v3

    .line 78
    .end local v0    # "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    :goto_0
    return-object v0

    .line 75
    .restart local v0    # "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    :cond_0
    move-object v3, v2

    instance-of v3, v3, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_1

    .line 76
    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    move-object v0, v3

    goto :goto_0

    .line 77
    :cond_1
    move-object v3, v2

    instance-of v3, v3, Lorg/w3c/dom/DocumentFragment;

    if-eqz v3, :cond_2

    .line 78
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    move-object v0, v3

    goto :goto_0

    .line 83
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljavax/xml/bind/ValidationEventHandler;)Ljavax/xml/transform/Source;
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Ljavax/xml/bind/ValidationEventHandler;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lorg/w3c/dom/Element;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavax/xml/bind/annotation/W3CDomHandler;->marshal(Lorg/w3c/dom/Element;Ljavax/xml/bind/ValidationEventHandler;)Ljavax/xml/transform/Source;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    return-object v0
.end method

.method public marshal(Lorg/w3c/dom/Element;Ljavax/xml/bind/ValidationEventHandler;)Ljavax/xml/transform/Source;
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    move-object v1, p1

    .local v1, "element":Lorg/w3c/dom/Element;
    move-object v2, p2

    .local v2, "errorHandler":Ljavax/xml/bind/ValidationEventHandler;
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object v0, v3

    .end local v0    # "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    return-object v0
.end method

.method public setBuilder(Ljavax/xml/parsers/DocumentBuilder;)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/W3CDomHandler;
    move-object v1, p1

    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/annotation/W3CDomHandler;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 59
    return-void
.end method
