.class public Lorg/apache/xerces/dom/ProcessingInstructionImpl;
.super Lorg/apache/xerces/dom/CharacterDataImpl;

# interfaces
.implements Lorg/w3c/dom/ProcessingInstruction;


# static fields
.field static final serialVersionUID:J = 0x68d6bec406f214c6L


# instance fields
.field protected target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/CharacterDataImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ProcessingInstructionImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ProcessingInstructionImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ProcessingInstructionImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ProcessingInstructionImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ProcessingInstructionImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getNodeType()S
    .locals 2

    move-object v0, p0

    const/4 v1, 0x7

    move v0, v1

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ProcessingInstructionImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ProcessingInstructionImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
