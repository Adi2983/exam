.class final Lorg/apache/xerces/util/XMLErrorCode;
.super Ljava/lang/Object;


# instance fields
.field private fDomain:Ljava/lang/String;

.field private fKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/util/XMLErrorCode;->fKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Lorg/apache/xerces/util/XMLErrorCode;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v1

    check-cast v3, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLErrorCode;->fKey:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/util/XMLErrorCode;->fKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLErrorCode;->fKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/util/XMLErrorCode;->fDomain:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/util/XMLErrorCode;->fKey:Ljava/lang/String;

    return-void
.end method
