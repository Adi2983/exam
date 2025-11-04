.class Lorg/apache/html/dom/CollectionIndex;
.super Ljava/lang/Object;


# instance fields
.field private _index:I


# direct methods
.method constructor <init>(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/html/dom/CollectionIndex;->_index:I

    return-void
.end method


# virtual methods
.method decrement()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lorg/apache/html/dom/CollectionIndex;->_index:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/apache/html/dom/CollectionIndex;->_index:I

    return-void
.end method

.method getIndex()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/html/dom/CollectionIndex;->_index:I

    move v0, v1

    return v0
.end method

.method isZero()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/html/dom/CollectionIndex;->_index:I

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
