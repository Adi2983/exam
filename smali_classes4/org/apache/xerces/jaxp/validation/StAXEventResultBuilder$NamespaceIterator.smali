.class final Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NamespaceIterator"
.end annotation


# instance fields
.field fEnd:I

.field fIndex:I

.field fNC:Ljavax/xml/namespace/NamespaceContext;

.field private final this$0:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;


# direct methods
.method constructor <init>(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;I)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->this$0:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$200(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fNC:Ljavax/xml/namespace/NamespaceContext;

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fIndex:I

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fEnd:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fIndex:I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fEnd:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fNC:Ljavax/xml/namespace/NamespaceContext;

    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 10

    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/NoSuchElementException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->this$0:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-static {v3}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$200(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v3

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fIndex:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fIndex:I

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fNC:Ljavax/xml/namespace/NamespaceContext;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->this$0:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-static {v3}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$100(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Ljavax/xml/stream/XMLEventFactory;

    move-result-object v3

    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Ljavax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;

    move-result-object v3

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_1
    const-string/jumbo v4, ""

    goto :goto_0

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->this$0:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-static {v3}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$100(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Ljavax/xml/stream/XMLEventFactory;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    if-eqz v5, :cond_3

    move-object v5, v2

    :goto_2
    invoke-virtual {v3, v4, v5}, Ljavax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    :cond_3
    const-string/jumbo v5, ""

    goto :goto_2
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
