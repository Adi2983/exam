.class Lorg/apache/xerces/dom/CharacterDataImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/NodeList;


# direct methods
.method constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 3

    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method
