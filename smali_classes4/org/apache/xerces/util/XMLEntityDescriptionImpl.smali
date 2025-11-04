.class public Lorg/apache/xerces/util/XMLEntityDescriptionImpl;
.super Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

# interfaces
.implements Lorg/apache/xerces/impl/XMLEntityDescription;


# instance fields
.field protected fEntityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    invoke-direct {v6}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    invoke-direct {v7}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    return-void
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->hashCode()I

    move-result v2

    move v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    :cond_0
    move v2, v1

    move v0, v2

    return v0
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEntityName(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fEntityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_0
    move-object v2, v1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fPublicId:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_1
    move-object v2, v1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fLiteralSystemId:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fLiteralSystemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_2
    move-object v2, v1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fBaseSystemId:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fBaseSystemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_3
    move-object v2, v1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_4
    move-object v2, v1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fNamespace:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLEntityDescriptionImpl;->fNamespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_5
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
