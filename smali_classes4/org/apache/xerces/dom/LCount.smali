.class Lorg/apache/xerces/dom/LCount;
.super Ljava/lang/Object;


# static fields
.field static lCounts:Ljava/util/Hashtable;


# instance fields
.field public bubbles:I

.field public captures:I

.field public defaults:I

.field public total:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xerces/dom/LCount;->lCounts:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/dom/LCount;->captures:I

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/dom/LCount;->bubbles:I

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/dom/LCount;->total:I

    return-void
.end method

.method static lookup(Ljava/lang/String;)Lorg/apache/xerces/dom/LCount;
    .locals 7

    move-object v0, p0

    sget-object v2, Lorg/apache/xerces/dom/LCount;->lCounts:Ljava/util/Hashtable;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/dom/LCount;

    move-object v1, v2

    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Lorg/apache/xerces/dom/LCount;->lCounts:Ljava/util/Hashtable;

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/dom/LCount;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/dom/LCount;-><init>()V

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v1, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method
