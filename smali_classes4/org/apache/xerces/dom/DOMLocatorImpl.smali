.class public Lorg/apache/xerces/dom/DOMLocatorImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/DOMLocator;


# instance fields
.field public fByteOffset:I

.field public fColumnNumber:I

.field public fLineNumber:I

.field public fRelatedNode:Lorg/w3c/dom/Node;

.field public fUri:Ljava/lang/String;

.field public fUtf16Offset:I


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lorg/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lorg/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lorg/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    move-object v5, v0

    move v6, v1

    iput v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    move-object v5, v0

    move v6, v2

    iput v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method

.method public constructor <init>(IIILorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    move-object v6, v0

    move v7, v1

    iput v7, v6, Lorg/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    move-object v6, v0

    move v7, v2

    iput v7, v6, Lorg/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    move-object v6, v0

    move v7, v3

    iput v7, v6, Lorg/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIILorg/w3c/dom/Node;Ljava/lang/String;I)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Lorg/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Lorg/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Lorg/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    move-object v7, v0

    move v8, v1

    iput v8, v7, Lorg/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    move-object v7, v0

    move v8, v2

    iput v8, v7, Lorg/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    move-object v7, v0

    move v8, v3

    iput v8, v7, Lorg/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    move-object v7, v0

    move v8, v6

    iput v8, v7, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lorg/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lorg/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lorg/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lorg/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lorg/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getByteOffset()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    move v0, v1

    return v0
.end method

.method public getColumnNumber()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    move v0, v1

    return v0
.end method

.method public getLineNumber()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    move v0, v1

    return v0
.end method

.method public getRelatedNode()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    move-object v0, v1

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getUtf16Offset()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    move v0, v1

    return v0
.end method
