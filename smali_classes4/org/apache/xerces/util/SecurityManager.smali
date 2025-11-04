.class public final Lorg/apache/xerces/util/SecurityManager;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_ENTITY_EXPANSION_LIMIT:I = 0x186a0

.field private static final DEFAULT_MAX_OCCUR_NODE_LIMIT:I = 0xbb8


# instance fields
.field private entityExpansionLimit:I

.field private maxOccurLimit:I


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const v2, 0x186a0

    iput v2, v1, Lorg/apache/xerces/util/SecurityManager;->entityExpansionLimit:I

    move-object v1, v0

    const/16 v2, 0xbb8

    iput v2, v1, Lorg/apache/xerces/util/SecurityManager;->maxOccurLimit:I

    return-void
.end method


# virtual methods
.method public getEntityExpansionLimit()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/SecurityManager;->entityExpansionLimit:I

    move v0, v1

    return v0
.end method

.method public getMaxOccurNodeLimit()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/SecurityManager;->maxOccurLimit:I

    move v0, v1

    return v0
.end method

.method public setEntityExpansionLimit(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xerces/util/SecurityManager;->entityExpansionLimit:I

    return-void
.end method

.method public setMaxOccurNodeLimit(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xerces/util/SecurityManager;->maxOccurLimit:I

    return-void
.end method
