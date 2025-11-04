.class final Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;
.super Lorg/xml/sax/helpers/DefaultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/JAXPValidatorComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SAX2XNI"
.end annotation


# instance fields
.field private final fAugmentations:Lorg/apache/xerces/xni/Augmentations;

.field private final fQName:Lorg/apache/xerces/xni/QName;

.field private final this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;


# direct methods
.method private constructor <init>(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/AugmentationsImpl;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fAugmentations:Lorg/apache/xerces/xni/Augmentations;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/QName;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fQName:Lorg/apache/xerces/xni/QName;

    return-void
.end method

.method constructor <init>(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;Lorg/apache/xerces/jaxp/JAXPValidatorComponent$1;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;-><init>(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;)V

    return-void
.end method

.method private aug()Lorg/apache/xerces/xni/Augmentations;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v2}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->access$600(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v2}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->access$600(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->access$602(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;Lorg/apache/xerces/xni/Augmentations;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v2

    move-object v2, v1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fAugmentations:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {v2}, Lorg/apache/xerces/xni/Augmentations;->removeAllItems()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fAugmentations:Lorg/apache/xerces/xni/Augmentations;

    move-object v0, v2

    goto :goto_0
.end method

.method private elementAug()Lorg/apache/xerces/xni/Augmentations;
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->aug()Lorg/apache/xerces/xni/Augmentations;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private handler()Lorg/apache/xerces/xni/XMLDocumentHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-virtual {v1}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private toQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/QName;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v6, 0x0

    move-object v4, v6

    move-object v6, v3

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v5, v6

    move v6, v5

    if-lez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    move-object v7, v3

    const/4 v8, 0x0

    move v9, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->access$700(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    move-object v7, v2

    invoke-static {v6, v7}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->access$700(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    move-object v7, v3

    invoke-static {v6, v7}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->access$700(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    move-object v7, v1

    invoke-static {v6, v7}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->access$700(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fQName:Lorg/apache/xerces/xni/QName;

    move-object v7, v4

    move-object v8, v2

    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->fQName:Lorg/apache/xerces/xni/QName;

    move-object v0, v6

    return-object v0
.end method

.method private toSAXException(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v1

    move-object v2, v3

    :cond_0
    move-object v3, v2

    instance-of v3, v3, Lorg/xml/sax/SAXException;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/xml/sax/SAXException;

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    :try_start_0
    invoke-direct {v5}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->handler()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v5

    new-instance v6, Lorg/apache/xerces/xni/XMLString;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/xni/XMLString;-><init>([CII)V

    move-object v7, v0

    invoke-direct {v7}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->aug()Lorg/apache/xerces/xni/Augmentations;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toSAXException(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v5

    throw v5
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    :try_start_0
    invoke-direct {v5}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->handler()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/QName;

    move-result-object v6

    move-object v7, v0

    invoke-direct {v7}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->aug()Lorg/apache/xerces/xni/Augmentations;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toSAXException(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v5

    throw v5
.end method

.method public ignorableWhitespace([CII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    :try_start_0
    invoke-direct {v5}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->handler()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v5

    new-instance v6, Lorg/apache/xerces/xni/XMLString;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/xni/XMLString;-><init>([CII)V

    move-object v7, v0

    invoke-direct {v7}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->aug()Lorg/apache/xerces/xni/Augmentations;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toSAXException(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v5

    throw v5
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    move-object v7, v4

    invoke-static {v6, v7}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->access$400(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;Lorg/xml/sax/Attributes;)V

    move-object v6, v0

    invoke-direct {v6}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->handler()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/QName;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->this$0:Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v8}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;->access$500(Lorg/apache/xerces/jaxp/JAXPValidatorComponent;)Lorg/apache/xerces/xni/XMLAttributes;

    move-result-object v8

    move-object v9, v0

    invoke-direct {v9}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->elementAug()Lorg/apache/xerces/xni/Augmentations;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$SAX2XNI;->toSAXException(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v6

    throw v6
.end method
