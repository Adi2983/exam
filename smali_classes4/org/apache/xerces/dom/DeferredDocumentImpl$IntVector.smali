.class final Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/dom/DeferredDocumentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntVector"
.end annotation


# instance fields
.field private data:[I

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->data:[I

    if-nez v3, :cond_1

    move-object v3, v0

    move v4, v1

    const/16 v5, 0xf

    add-int/lit8 v4, v4, 0xf

    new-array v4, v4, [I

    iput-object v4, v3, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->data:[I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->data:[I

    array-length v4, v4

    if-le v3, v4, :cond_0

    move v3, v1

    const/16 v4, 0xf

    add-int/lit8 v3, v3, 0xf

    new-array v3, v3, [I

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->data:[I

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->data:[I

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->data:[I

    goto :goto_0
.end method


# virtual methods
.method public addElement(I)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->size:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->ensureCapacity(I)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->data:[I

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->size:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->size:I

    move v4, v1

    aput v4, v2, v3

    return-void
.end method

.method public elementAt(I)I
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->data:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    return v0
.end method

.method public removeAllElements()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->size:I

    return-void
.end method

.method public size()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/DeferredDocumentImpl$IntVector;->size:I

    move v0, v1

    return v0
.end method
