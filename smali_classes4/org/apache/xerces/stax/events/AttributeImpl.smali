.class public Lorg/apache/xerces/stax/events/AttributeImpl;
.super Lorg/apache/xerces/stax/events/XMLEventImpl;

# interfaces
.implements Ljavax/xml/stream/events/Attribute;


# instance fields
.field private final fDtdType:Ljava/lang/String;

.field private final fIsSpecified:Z

.field private final fName:Ljavax/xml/namespace/QName;

.field private final fValue:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move v8, v1

    move-object v9, v6

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/stax/events/XMLEventImpl;-><init>(ILjavax/xml/stream/Location;)V

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lorg/apache/xerces/stax/events/AttributeImpl;->fName:Ljavax/xml/namespace/QName;

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lorg/apache/xerces/stax/events/AttributeImpl;->fValue:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lorg/apache/xerces/stax/events/AttributeImpl;->fDtdType:Ljava/lang/String;

    move-object v7, v0

    move v8, v5

    iput-boolean v8, v7, Lorg/apache/xerces/stax/events/AttributeImpl;->fIsSpecified:Z

    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    const/16 v7, 0xa

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lorg/apache/xerces/stax/events/AttributeImpl;-><init>(ILjavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V

    return-void
.end method


# virtual methods
.method public final getDTDType()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/AttributeImpl;->fDtdType:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final getName()Ljavax/xml/namespace/QName;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/AttributeImpl;->fName:Ljavax/xml/namespace/QName;

    move-object v0, v1

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/AttributeImpl;->fValue:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final isSpecified()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/stax/events/AttributeImpl;->fIsSpecified:Z

    move v0, v1

    return v0
.end method

.method public final writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xerces/stax/events/AttributeImpl;->fName:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/stax/events/AttributeImpl;->fName:Ljavax/xml/namespace/QName;

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    const-string/jumbo v4, "=\""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/stax/events/AttributeImpl;->fValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    new-instance v3, Ljavax/xml/stream/XMLStreamException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
