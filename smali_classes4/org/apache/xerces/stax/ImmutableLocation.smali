.class public Lorg/apache/xerces/stax/ImmutableLocation;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/xml/stream/Location;


# instance fields
.field private final fCharacterOffset:I

.field private final fColumnNumber:I

.field private final fLineNumber:I

.field private final fPublicId:Ljava/lang/String;

.field private final fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move v7, v1

    iput v7, v6, Lorg/apache/xerces/stax/ImmutableLocation;->fCharacterOffset:I

    move-object v6, v0

    move v7, v2

    iput v7, v6, Lorg/apache/xerces/stax/ImmutableLocation;->fColumnNumber:I

    move-object v6, v0

    move v7, v3

    iput v7, v6, Lorg/apache/xerces/stax/ImmutableLocation;->fLineNumber:I

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/stax/ImmutableLocation;->fPublicId:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lorg/apache/xerces/stax/ImmutableLocation;->fSystemId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/Location;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/Location;->getCharacterOffset()I

    move-result v3

    move-object v4, v1

    invoke-interface {v4}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result v4

    move-object v5, v1

    invoke-interface {v5}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v5

    move-object v6, v1

    invoke-interface {v6}, Ljavax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v7}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lorg/apache/xerces/stax/ImmutableLocation;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/stax/ImmutableLocation;->fCharacterOffset:I

    move v0, v1

    return v0
.end method

.method public getColumnNumber()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/stax/ImmutableLocation;->fColumnNumber:I

    move v0, v1

    return v0
.end method

.method public getLineNumber()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/stax/ImmutableLocation;->fLineNumber:I

    move v0, v1

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/ImmutableLocation;->fPublicId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/ImmutableLocation;->fSystemId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
