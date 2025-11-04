.class final Lorg/apache/xerces/jaxp/UnparsedEntityHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLDTDFilter;
.implements Lorg/apache/xerces/impl/validation/EntityState;


# instance fields
.field private fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

.field private fDTDSource:Lorg/apache/xerces/xni/parser/XMLDTDSource;

.field private fUnparsedEntities:Ljava/util/HashMap;

.field private final fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;


# direct methods
.method constructor <init>(Lorg/apache/xerces/impl/validation/ValidationManager;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fUnparsedEntities:Ljava/util/HashMap;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-interface/range {v9 .. v17}, Lorg/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endAttlist(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endConditional(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->endConditional(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endDTD(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->endDTD(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endExternalSubset(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->endExternalSubset(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public getDTDHandler()Lorg/apache/xerces/xni/XMLDTDHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getDTDSource()Lorg/apache/xerces/xni/parser/XMLDTDSource;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDSource:Lorg/apache/xerces/xni/parser/XMLDTDSource;

    move-object v0, v1

    return-object v0
.end method

.method public ignoredCharacters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->ignoredCharacters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 3

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fUnparsedEntities:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fUnparsedEntities:Ljava/util/HashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public notationDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fUnparsedEntities:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fUnparsedEntities:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fUnparsedEntities:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    return-void
.end method

.method public setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDSource:Lorg/apache/xerces/xni/parser/XMLDTDSource;

    return-void
.end method

.method public startAttlist(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startConditional(SLorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->startConditional(SLorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startDTD(Lorg/apache/xerces/xni/XMLLocator;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lorg/apache/xerces/impl/validation/EntityState;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->startDTD(Lorg/apache/xerces/xni/XMLLocator;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startExternalSubset(Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLDTDHandler;->startExternalSubset(Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Lorg/apache/xerces/xni/XMLDTDHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fUnparsedEntities:Ljava/util/HashMap;

    if-nez v5, :cond_0

    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fUnparsedEntities:Ljava/util/HashMap;

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fUnparsedEntities:Ljava/util/HashMap;

    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method
