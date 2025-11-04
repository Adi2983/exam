.class Lorg/apache/xerces/stax/events/StartElementImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move-object v5, v1

    check-cast v5, Ljavax/xml/namespace/QName;

    move-object v3, v5

    move-object v5, v2

    check-cast v5, Ljavax/xml/namespace/QName;

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method
