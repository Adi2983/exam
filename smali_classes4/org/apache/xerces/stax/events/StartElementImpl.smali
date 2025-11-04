.class public final Lorg/apache/xerces/stax/events/StartElementImpl;
.super Lorg/apache/xerces/stax/events/ElementImpl;

# interfaces
.implements Ljavax/xml/stream/events/StartElement;


# static fields
.field private static final QNAME_COMPARATOR:Ljava/util/Comparator;


# instance fields
.field private final fAttributes:Ljava/util/Map;

.field private final fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/stax/events/StartElementImpl$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/stax/events/StartElementImpl$1;-><init>()V

    sput-object v0, Lorg/apache/xerces/stax/events/StartElementImpl;->QNAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;Ljavax/xml/stream/Location;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x1

    move-object v10, v3

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/xerces/stax/events/ElementImpl;-><init>(Ljavax/xml/namespace/QName;ZLjava/util/Iterator;Ljavax/xml/stream/Location;)V

    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v0

    new-instance v8, Ljava/util/TreeMap;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    sget-object v10, Lorg/apache/xerces/stax/events/StartElementImpl;->QNAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v9, v10}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v8, v7, Lorg/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    :cond_0
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/xml/stream/events/Attribute;

    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    move-object v8, v6

    invoke-interface {v8}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v8

    move-object v9, v6

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    move-object v7, v0

    move-object v8, v4

    if-eqz v8, :cond_2

    move-object v8, v4

    :goto_1
    iput-object v8, v7, Lorg/apache/xerces/stax/events/StartElementImpl;->fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    return-void

    :cond_1
    move-object v7, v0

    sget-object v8, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v8, v7, Lorg/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/apache/xerces/stax/DefaultNamespaceContext;->getInstance()Lorg/apache/xerces/stax/DefaultNamespaceContext;

    move-result-object v8

    goto :goto_1
.end method


# virtual methods
.method public getAttributeByName(Ljavax/xml/namespace/QName;)Ljavax/xml/stream/events/Attribute;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/stream/events/Attribute;

    move-object v0, v2

    return-object v0
.end method

.method public getAttributes()Ljava/util/Iterator;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/StartElementImpl;->fAttributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xerces/stax/events/ElementImpl;->createImmutableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/StartElementImpl;->fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    move-object v0, v1

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/stax/events/StartElementImpl;->fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    const/16 v8, 0x3c

    :try_start_0
    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(I)V

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/stax/events/StartElementImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v7

    move-object v2, v7

    move-object v7, v2

    invoke-virtual {v7}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    if-eqz v7, :cond_0

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v7, v1

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(I)V

    :cond_0
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v8}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/stax/events/StartElementImpl;->getNamespaces()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    :goto_0
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/stax/events/StartElementImpl;->getAttributes()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_1
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v1

    const/16 v8, 0x3e

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(I)V

    return-void

    :cond_1
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/xml/stream/events/Namespace;

    move-object v5, v7

    move-object v7, v1

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(I)V

    move-object v7, v5

    move-object v8, v1

    invoke-interface {v7, v8}, Ljavax/xml/stream/events/Namespace;->writeAsEncodedUnicode(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v2, v7

    new-instance v7, Ljavax/xml/stream/XMLStreamException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_2
    move-object v7, v5

    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/xml/stream/events/Attribute;

    move-object v6, v7

    move-object v7, v1

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(I)V

    move-object v7, v6

    move-object v8, v1

    invoke-interface {v7, v8}, Ljavax/xml/stream/events/Attribute;->writeAsEncodedUnicode(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
