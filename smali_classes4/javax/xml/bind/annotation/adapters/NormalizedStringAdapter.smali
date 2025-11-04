.class public final Ljavax/xml/bind/annotation/adapters/NormalizedStringAdapter;
.super Ljavax/xml/bind/annotation/adapters/XmlAdapter;
.source "NormalizedStringAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/xml/bind/annotation/adapters/XmlAdapter",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/adapters/NormalizedStringAdapter;
    move-object v1, v0

    invoke-direct {v1}, Ljavax/xml/bind/annotation/adapters/XmlAdapter;-><init>()V

    return-void
.end method

.method protected static isWhiteSpaceExceptSpace(C)Z
    .locals 3

    .prologue
    .line 67
    move v0, p0

    .local v0, "ch":C
    move v1, v0

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 70
    .end local v0    # "ch":C
    :goto_0
    return v0

    .restart local v0    # "ch":C
    :cond_0
    move v1, v0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic marshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/adapters/NormalizedStringAdapter;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavax/xml/bind/annotation/adapters/NormalizedStringAdapter;->marshal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/annotation/adapters/NormalizedStringAdapter;
    return-object v0
.end method

.method public marshal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/adapters/NormalizedStringAdapter;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/annotation/adapters/NormalizedStringAdapter;
    return-object v0
.end method

.method public bridge synthetic unmarshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/adapters/NormalizedStringAdapter;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavax/xml/bind/annotation/adapters/NormalizedStringAdapter;->unmarshal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/annotation/adapters/NormalizedStringAdapter;
    return-object v0
.end method

.method public unmarshal(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/adapters/NormalizedStringAdapter;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 47
    .end local v0    # "this":Ljavax/xml/bind/annotation/adapters/NormalizedStringAdapter;
    :goto_0
    return-object v0

    .line 28
    .restart local v0    # "this":Ljavax/xml/bind/annotation/adapters/NormalizedStringAdapter;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .line 31
    .local v2, "i":I
    :goto_1
    move v4, v2

    if-ltz v4, :cond_1

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljavax/xml/bind/annotation/adapters/NormalizedStringAdapter;->isWhiteSpaceExceptSpace(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 32
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 34
    :cond_1
    move v4, v2

    if-gez v4, :cond_2

    .line 36
    move-object v4, v1

    move-object v0, v4

    goto :goto_0

    .line 40
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move-object v3, v4

    .line 42
    .local v3, "buf":[C
    move-object v4, v3

    move v5, v2

    move v8, v5

    move v5, v8

    move v6, v8

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v2, v6

    const/16 v6, 0x20

    aput-char v6, v4, v5

    .line 43
    :goto_2
    move v4, v2

    if-ltz v4, :cond_4

    .line 44
    move-object v4, v3

    move v5, v2

    aget-char v4, v4, v5

    invoke-static {v4}, Ljavax/xml/bind/annotation/adapters/NormalizedStringAdapter;->isWhiteSpaceExceptSpace(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 45
    move-object v4, v3

    move v5, v2

    const/16 v6, 0x20

    aput-char v6, v4, v5

    .line 43
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 47
    :cond_4
    new-instance v4, Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    move-object v0, v4

    goto :goto_0
.end method
