.class public final Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/AttributeList;
.implements Lorg/xml/sax/ext/Attributes2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/parsers/AbstractSAXParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "AttributesProxy"
.end annotation


# instance fields
.field protected fAttributes:Lorg/apache/xerces/xni/XMLAttributes;


# direct methods
.method protected constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    const/4 v4, 0x0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public getLength()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLAttributes;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    const/4 v4, 0x0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLAttributes;->getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLAttributes;->getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v4, v1

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    const/4 v4, 0x0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public isDeclared(I)Z
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {v3}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v4, v1

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v3

    const-string/jumbo v4, "ATTRIBUTE_DECLARED"

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isDeclared(Ljava/lang/String;)Z
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->getIndex(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v5, v2

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v4

    const-string/jumbo v5, "ATTRIBUTE_DECLARED"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public isDeclared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v6, v3

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v5

    const-string/jumbo v6, "ATTRIBUTE_DECLARED"

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public isSpecified(I)Z
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-interface {v3}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isSpecified(Ljava/lang/String;)Z
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->getIndex(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v4, v2

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public isSpecified(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v5, v3

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public setAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    return-void
.end method
