.class Lorg/apache/xerces/dom/NodeListCache;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6e043ddb01f12e5aL


# instance fields
.field fChild:Lorg/apache/xerces/dom/ChildNode;

.field fChildIndex:I

.field fLength:I

.field fOwner:Lorg/apache/xerces/dom/ParentNode;

.field next:Lorg/apache/xerces/dom/NodeListCache;


# direct methods
.method constructor <init>(Lorg/apache/xerces/dom/ParentNode;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lorg/apache/xerces/dom/NodeListCache;->fLength:I

    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lorg/apache/xerces/dom/NodeListCache;->fChildIndex:I

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/NodeListCache;->fOwner:Lorg/apache/xerces/dom/ParentNode;

    return-void
.end method
