.class public final Lorg/apache/xerces/stax/events/NamespaceImpl;
.super Lorg/apache/xerces/stax/events/AttributeImpl;

# interfaces
.implements Ljavax/xml/stream/events/Namespace;


# instance fields
.field private final fNamespaceURI:Ljava/lang/String;

.field private final fPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/Location;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const/16 v5, 0xd

    move-object v6, v1

    invoke-static {v6}, Lorg/apache/xerces/stax/events/NamespaceImpl;->makeAttributeQName(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v6

    move-object v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lorg/apache/xerces/stax/events/AttributeImpl;-><init>(ILjavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V

    move-object v4, v0

    move-object v5, v1

    if-nez v5, :cond_0

    const-string/jumbo v5, ""

    :goto_0
    iput-object v5, v4, Lorg/apache/xerces/stax/events/NamespaceImpl;->fPrefix:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/stax/events/NamespaceImpl;->fNamespaceURI:Ljava/lang/String;

    return-void

    :cond_0
    move-object v5, v1

    goto :goto_0
.end method

.method private static makeAttributeQName(Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 7

    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljavax/xml/namespace/QName;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v4, "xmlns"

    const-string/jumbo v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljavax/xml/namespace/QName;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "http://www.w3.org/2000/xmlns/"

    move-object v4, v0

    const-string/jumbo v5, "xmlns"

    invoke-direct {v2, v3, v4, v5}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getNamespaceURI()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/NamespaceImpl;->fNamespaceURI:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/NamespaceImpl;->fPrefix:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public isDefaultNamespaceDeclaration()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/NamespaceImpl;->fPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
