.class public Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/xinclude/XIncludeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Notation"
.end annotation


# instance fields
.field public augmentations:Lorg/apache/xerces/xni/Augmentations;

.field public baseURI:Ljava/lang/String;

.field public expandedSystemId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public systemId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    if-eq v3, v4, :cond_0

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public isDuplicate(Ljava/lang/Object;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    instance-of v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->publicId:Ljava/lang/String;

    move-object v5, v2

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->publicId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->expandedSystemId:Ljava/lang/String;

    move-object v5, v2

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->expandedSystemId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/xinclude/XIncludeHandler$Notation;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    :goto_1
    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method
