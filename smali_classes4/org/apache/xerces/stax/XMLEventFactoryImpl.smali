.class public final Lorg/apache/xerces/stax/XMLEventFactoryImpl;
.super Ljavax/xml/stream/XMLEventFactory;


# instance fields
.field private fLocation:Ljavax/xml/stream/Location;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavax/xml/stream/XMLEventFactory;-><init>()V

    return-void
.end method

.method private createStartElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/stream/events/StartElement;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    new-instance v5, Lorg/apache/xerces/stax/events/StartElementImpl;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Ljavax/xml/stream/Location;

    invoke-direct/range {v6 .. v11}, Lorg/apache/xerces/stax/events/StartElementImpl;-><init>(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;Ljavax/xml/stream/Location;)V

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method public createAttribute(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    new-instance v4, Ljavax/xml/namespace/QName;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createAttribute(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    new-instance v6, Ljavax/xml/namespace/QName;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v2

    move-object v9, v3

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createAttribute(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public createAttribute(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lorg/apache/xerces/stax/events/AttributeImpl;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v2

    const-string/jumbo v7, "CDATA"

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Ljavax/xml/stream/Location;

    invoke-direct/range {v4 .. v9}, Lorg/apache/xerces/stax/events/AttributeImpl;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V

    move-object v0, v3

    return-object v0
.end method

.method public createCData(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/stax/events/CharactersImpl;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    const/16 v5, 0xc

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Ljavax/xml/stream/Location;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/stax/events/CharactersImpl;-><init>(Ljava/lang/String;ILjavax/xml/stream/Location;)V

    move-object v0, v2

    return-object v0
.end method

.method public createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/stax/events/CharactersImpl;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    const/4 v5, 0x4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Ljavax/xml/stream/Location;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/stax/events/CharactersImpl;-><init>(Ljava/lang/String;ILjavax/xml/stream/Location;)V

    move-object v0, v2

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Ljavax/xml/stream/events/Comment;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/stax/events/CommentImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Ljavax/xml/stream/Location;

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/stax/events/CommentImpl;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    move-object v0, v2

    return-object v0
.end method

.method public createDTD(Ljava/lang/String;)Ljavax/xml/stream/events/DTD;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/stax/events/DTDImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Ljavax/xml/stream/Location;

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/stax/events/DTDImpl;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    move-object v0, v2

    return-object v0
.end method

.method public createEndDocument()Ljavax/xml/stream/events/EndDocument;
    .locals 5

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/stax/events/EndDocumentImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Ljavax/xml/stream/Location;

    invoke-direct {v2, v3}, Lorg/apache/xerces/stax/events/EndDocumentImpl;-><init>(Ljavax/xml/stream/Location;)V

    move-object v0, v1

    return-object v0
.end method

.method public createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/EndElement;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    new-instance v5, Ljavax/xml/namespace/QName;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    move-object v8, v3

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createEndElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    new-instance v6, Ljavax/xml/namespace/QName;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v2

    move-object v9, v3

    move-object v10, v1

    invoke-direct {v7, v8, v9, v10}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createEndElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public createEndElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lorg/apache/xerces/stax/events/EndElementImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Ljavax/xml/stream/Location;

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/stax/events/EndElementImpl;-><init>(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljavax/xml/stream/Location;)V

    move-object v0, v3

    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)Ljavax/xml/stream/events/EntityReference;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lorg/apache/xerces/stax/events/EntityReferenceImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Ljavax/xml/stream/Location;

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/stax/events/EntityReferenceImpl;-><init>(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;Ljavax/xml/stream/Location;)V

    move-object v0, v3

    return-object v0
.end method

.method public createIgnorableSpace(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/stax/events/CharactersImpl;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    const/4 v5, 0x6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Ljavax/xml/stream/Location;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/stax/events/CharactersImpl;-><init>(Ljava/lang/String;ILjavax/xml/stream/Location;)V

    move-object v0, v2

    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, ""

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lorg/apache/xerces/stax/events/NamespaceImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Ljavax/xml/stream/Location;

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/stax/events/NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/Location;)V

    move-object v0, v3

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/ProcessingInstruction;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lorg/apache/xerces/stax/events/ProcessingInstructionImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Ljavax/xml/stream/Location;

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/stax/events/ProcessingInstructionImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/Location;)V

    move-object v0, v3

    return-object v0
.end method

.method public createSpace(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public createStartDocument()Ljavax/xml/stream/events/StartDocument;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lorg/apache/xerces/stax/events/StartDocumentImpl;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    move-object v6, v1

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Ljavax/xml/stream/Location;

    invoke-direct/range {v4 .. v10}, Lorg/apache/xerces/stax/events/StartDocumentImpl;-><init>(Ljava/lang/String;ZZZLjava/lang/String;Ljavax/xml/stream/Location;)V

    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Ljavax/xml/stream/events/StartDocument;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    new-instance v4, Lorg/apache/xerces/stax/events/StartDocumentImpl;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    move-object v7, v1

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move v8, v3

    const/4 v9, 0x1

    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Ljavax/xml/stream/Location;

    invoke-direct/range {v5 .. v11}, Lorg/apache/xerces/stax/events/StartDocumentImpl;-><init>(Ljava/lang/String;ZZZLjava/lang/String;Ljavax/xml/stream/Location;)V

    move-object v0, v4

    return-object v0

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartElement;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    new-instance v5, Ljavax/xml/namespace/QName;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    move-object v8, v3

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createStartElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    new-instance v7, Ljavax/xml/namespace/QName;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    move-object v10, v3

    move-object v11, v1

    invoke-direct {v8, v9, v10, v11}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createStartElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/stream/events/StartElement;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    new-instance v8, Ljavax/xml/namespace/QName;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v2

    move-object v11, v3

    move-object v12, v1

    invoke-direct {v9, v10, v11, v12}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createStartElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/stream/events/StartElement;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method public createStartElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createStartElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/stream/events/StartElement;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public setLocation(Ljavax/xml/stream/Location;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->fLocation:Ljavax/xml/stream/Location;

    return-void
.end method
