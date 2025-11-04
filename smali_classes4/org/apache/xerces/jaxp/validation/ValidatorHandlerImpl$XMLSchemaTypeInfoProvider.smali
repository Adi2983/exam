.class Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;
.super Ljavax/xml/validation/TypeInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XMLSchemaTypeInfoProvider"
.end annotation


# instance fields
.field private fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

.field private fElementAugs:Lorg/apache/xerces/xni/Augmentations;

.field private fInEndElement:Z

.field private fInStartElement:Z

.field private final this$0:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;


# direct methods
.method private constructor <init>(Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljavax/xml/validation/TypeInfoProvider;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->this$0:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInStartElement:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInEndElement:Z

    return-void
.end method

.method constructor <init>(Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$1;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;-><init>(Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;)V

    return-void
.end method

.method private checkStateAttribute()V
    .locals 7

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInStartElement:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->this$0:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-static {v3}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->access$100(Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;)Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "TypeInfoProviderIllegalStateAttribute"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private checkStateElement()V
    .locals 7

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInStartElement:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInEndElement:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->this$0:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-static {v3}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->access$100(Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;)Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "TypeInfoProviderIllegalStateElement"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private getAttributeType(I)Lorg/w3c/dom/TypeInfo;
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-direct {v4}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkStateAttribute()V

    move v4, v1

    if-ltz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v4

    move v5, v1

    if-gt v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v5, v1

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_2

    const/4 v4, 0x0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_2
    move-object v4, v2

    const-string/jumbo v5, "ATTRIBUTE_PSVI"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xs/AttributePSVI;

    move-object v3, v4

    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getTypeInfoFromPSVI(Lorg/apache/xerces/xs/ItemPSVI;)Lorg/w3c/dom/TypeInfo;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private getTypeInfoFromPSVI(Lorg/apache/xerces/xs/ItemPSVI;)Lorg/w3c/dom/TypeInfo;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xs/ItemPSVI;->getValidity()S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xs/ItemPSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    instance-of v3, v3, Lorg/w3c/dom/TypeInfo;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/TypeInfo;

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xs/ItemPSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_4

    move-object v3, v2

    instance-of v3, v3, Lorg/w3c/dom/TypeInfo;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/TypeInfo;

    :goto_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method beginEndElement(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInEndElement:Z

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lorg/apache/xerces/xni/Augmentations;

    return-void
.end method

.method beginStartElement(Lorg/apache/xerces/xni/Augmentations;Lorg/apache/xerces/xni/XMLAttributes;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInStartElement:Z

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lorg/apache/xerces/xni/Augmentations;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    return-void
.end method

.method finishEndElement()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInEndElement:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lorg/apache/xerces/xni/Augmentations;

    return-void
.end method

.method finishStartElement()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fInStartElement:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lorg/apache/xerces/xni/Augmentations;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    return-void
.end method

.method getAttributePSVI(I)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v4, v1

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    const-string/jumbo v4, "ATTRIBUTE_PSVI"

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xs/AttributePSVI;

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    const-string/jumbo v5, "ATTRIBUTE_PSVI"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xs/AttributePSVI;

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public getAttributeTypeInfo(I)Lorg/w3c/dom/TypeInfo;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkStateAttribute()V

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributeType(I)Lorg/w3c/dom/TypeInfo;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getAttributeTypeInfo(Ljava/lang/String;)Lorg/w3c/dom/TypeInfo;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkStateAttribute()V

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributeTypeInfo(I)Lorg/w3c/dom/TypeInfo;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getAttributeTypeInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/TypeInfo;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkStateAttribute()V

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributeTypeInfo(I)Lorg/w3c/dom/TypeInfo;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method getElementPSVI()Lorg/apache/xerces/xs/ElementPSVI;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lorg/apache/xerces/xni/Augmentations;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lorg/apache/xerces/xni/Augmentations;

    const-string/jumbo v2, "ELEMENT_PSVI"

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/xs/ElementPSVI;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getElementTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkStateElement()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lorg/apache/xerces/xni/Augmentations;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fElementAugs:Lorg/apache/xerces/xni/Augmentations;

    const-string/jumbo v3, "ELEMENT_PSVI"

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xs/ElementPSVI;

    move-object v1, v2

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getTypeInfoFromPSVI(Lorg/apache/xerces/xs/ItemPSVI;)Lorg/w3c/dom/TypeInfo;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public isIdAttribute(I)Z
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkStateAttribute()V

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributeType(I)Lorg/w3c/dom/TypeInfo;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/dv/XSSimpleType;

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public isSpecified(I)Z
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->checkStateAttribute()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v2

    move v0, v2

    return v0
.end method
