.class final Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AttributeIterator"
.end annotation


# instance fields
.field fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

.field fEnd:I

.field fIndex:I

.field private final this$0:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;


# direct methods
.method constructor <init>(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;Lorg/apache/xerces/xni/XMLAttributes;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fIndex:I

    move-object v4, v0

    move v5, v3

    iput v5, v4, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fEnd:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fIndex:I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fEnd:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 12

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v10, v1

    move-object v1, v10

    move-object v2, v10

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fIndex:I

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-static {v3}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$000(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lorg/apache/xerces/xni/QName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/xerces/xni/XMLAttributes;->getName(ILorg/apache/xerces/xni/QName;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-static {v1}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$100(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Ljavax/xml/stream/XMLEventFactory;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-static {v2}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$000(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lorg/apache/xerces/xni/QName;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-static {v3}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$000(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lorg/apache/xerces/xni/QName;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-static {v3}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$000(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lorg/apache/xerces/xni/QName;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->this$0:Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-static {v4}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$000(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lorg/apache/xerces/xni/QName;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fIndex:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;->fIndex:I

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/xml/stream/XMLEventFactory;->createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;

    move-result-object v1

    move-object v0, v1

    return-object v0

    :cond_1
    const-string/jumbo v3, ""

    goto :goto_0
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
