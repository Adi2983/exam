.class Lorg/apache/xerces/jaxp/JAXPValidatorComponent$1;
.super Ljavax/xml/validation/TypeInfoProvider;


# direct methods
.method constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavax/xml/validation/TypeInfoProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeTypeInfo(I)Lorg/w3c/dom/TypeInfo;
    .locals 3

    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getAttributeTypeInfo(Ljava/lang/String;)Lorg/w3c/dom/TypeInfo;
    .locals 3

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getAttributeTypeInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/TypeInfo;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public getElementTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public isIdAttribute(I)Z
    .locals 3

    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isSpecified(I)Z
    .locals 3

    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method
