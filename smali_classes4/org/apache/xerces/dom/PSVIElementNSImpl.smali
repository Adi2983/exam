.class public Lorg/apache/xerces/dom/PSVIElementNSImpl;
.super Lorg/apache/xerces/dom/ElementNSImpl;

# interfaces
.implements Lorg/apache/xerces/xs/ElementPSVI;


# static fields
.field static final serialVersionUID:J = 0x5e957bb41eca45c4L


# instance fields
.field protected fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

.field protected fErrorCodes:Lorg/apache/xerces/xs/StringList;

.field protected fErrorMessages:Lorg/apache/xerces/xs/StringList;

.field protected fNil:Z

.field protected fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

.field protected fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

.field protected fSpecified:Z

.field protected fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

.field protected fValidationAttempted:S

.field protected fValidationContext:Ljava/lang/String;

.field protected fValidity:S

.field protected fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/dom/ElementNSImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fNil:Z

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fSpecified:Z

    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/impl/dv/ValidatedInfo;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

    move-object v4, v0

    const/4 v5, 0x0

    iput-short v5, v4, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidationAttempted:S

    move-object v4, v0

    const/4 v5, 0x0

    iput-short v5, v4, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidity:S

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorCodes:Lorg/apache/xerces/xs/StringList;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorMessages:Lorg/apache/xerces/xs/StringList;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidationContext:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/dom/ElementNSImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fNil:Z

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fSpecified:Z

    move-object v5, v0

    new-instance v6, Lorg/apache/xerces/impl/dv/ValidatedInfo;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lorg/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v6, v5, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

    move-object v5, v0

    const/4 v6, 0x0

    iput-short v6, v5, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidationAttempted:S

    move-object v5, v0

    const/4 v6, 0x0

    iput-short v6, v5, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidity:S

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorCodes:Lorg/apache/xerces/xs/StringList;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorMessages:Lorg/apache/xerces/xs/StringList;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidationContext:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/io/NotSerializableException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/io/NotSerializableException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public constant()Lorg/apache/xerces/xs/ItemPSVI;
    .locals 6

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/impl/xs/ElementPSVImpl;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/impl/xs/ElementPSVImpl;-><init>(ZLorg/apache/xerces/xs/ElementPSVI;)V

    move-object v0, v1

    return-object v0
.end method

.method public getActualNormalizedValue()Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getActualValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getActualNormalizedValueType()S
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getActualValueType()S

    move-result v1

    move v0, v1

    return v0
.end method

.method public getElementDeclaration()Lorg/apache/xerces/xs/XSElementDeclaration;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    move-object v0, v1

    return-object v0
.end method

.method public getErrorCodes()Lorg/apache/xerces/xs/StringList;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorCodes:Lorg/apache/xerces/xs/StringList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorCodes:Lorg/apache/xerces/xs/StringList;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lorg/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/StringListImpl;

    move-object v0, v1

    goto :goto_0
.end method

.method public getErrorMessages()Lorg/apache/xerces/xs/StringList;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorMessages:Lorg/apache/xerces/xs/StringList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorMessages:Lorg/apache/xerces/xs/StringList;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lorg/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/StringListImpl;

    move-object v0, v1

    goto :goto_0
.end method

.method public getIsSchemaSpecified()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fSpecified:Z

    move v0, v1

    return v0
.end method

.method public getItemValueTypes()Lorg/apache/xerces/xs/ShortList;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getListValueTypes()Lorg/apache/xerces/xs/ShortList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getNil()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fNil:Z

    move v0, v1

    return v0
.end method

.method public getNotation()Lorg/apache/xerces/xs/XSNotationDeclaration;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

    move-object v0, v1

    return-object v0
.end method

.method public getSchemaDefault()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    invoke-interface {v1}, Lorg/apache/xerces/xs/XSElementDeclaration;->getConstraintValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSchemaInformation()Lorg/apache/xerces/xs/XSModel;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    move-object v0, v1

    return-object v0
.end method

.method public getSchemaNormalizedValue()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->getNormalizedValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSchemaValue()Lorg/apache/xerces/xs/XSValue;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    move-object v0, v1

    return-object v0
.end method

.method public getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    move-object v0, v1

    return-object v0
.end method

.method public getValidationAttempted()S
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidationAttempted:S

    move v0, v1

    return v0
.end method

.method public getValidationContext()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidationContext:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getValidity()S
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidity:S

    move v0, v1

    return v0
.end method

.method public isConstant()Z
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public setPSVI(Lorg/apache/xerces/xs/ElementPSVI;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xs/ElementPSVI;->getElementDeclaration()Lorg/apache/xerces/xs/XSElementDeclaration;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lorg/apache/xerces/xs/XSElementDeclaration;

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xs/ElementPSVI;->getNotation()Lorg/apache/xerces/xs/XSNotationDeclaration;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fNotation:Lorg/apache/xerces/xs/XSNotationDeclaration;

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xs/ElementPSVI;->getValidationContext()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidationContext:Ljava/lang/String;

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xs/ElementPSVI;->getSchemaInformation()Lorg/apache/xerces/xs/XSModel;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fSchemaInformation:Lorg/apache/xerces/xs/XSModel;

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xs/ElementPSVI;->getValidity()S

    move-result v3

    iput-short v3, v2, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidity:S

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xs/ElementPSVI;->getValidationAttempted()S

    move-result v3

    iput-short v3, v2, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValidationAttempted:S

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xs/ElementPSVI;->getErrorCodes()Lorg/apache/xerces/xs/StringList;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorCodes:Lorg/apache/xerces/xs/StringList;

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xs/ElementPSVI;->getErrorMessages()Lorg/apache/xerces/xs/StringList;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fErrorMessages:Lorg/apache/xerces/xs/StringList;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    instance-of v2, v2, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    instance-of v2, v2, Lorg/apache/xerces/xs/XSComplexTypeDefinition;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast v2, Lorg/apache/xerces/xs/XSComplexTypeDefinition;

    invoke-interface {v2}, Lorg/apache/xerces/xs/XSComplexTypeDefinition;->getContentType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xs/ElementPSVI;->getSchemaValue()Lorg/apache/xerces/xs/XSValue;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lorg/apache/xerces/xs/XSValue;)V

    :goto_0
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xs/ElementPSVI;->getIsSchemaSpecified()Z

    move-result v3

    iput-boolean v3, v2, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fSpecified:Z

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/apache/xerces/xs/ElementPSVI;->getNil()Z

    move-result v3

    iput-boolean v3, v2, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fNil:Z

    return-void

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/dv/ValidatedInfo;->reset()V

    goto :goto_0
.end method
