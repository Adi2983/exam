.class public final Ljavax/xml/bind/annotation/adapters/HexBinaryAdapter;
.super Ljavax/xml/bind/annotation/adapters/XmlAdapter;
.source "HexBinaryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/xml/bind/annotation/adapters/XmlAdapter",
        "<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/adapters/HexBinaryAdapter;
    move-object v1, v0

    invoke-direct {v1}, Ljavax/xml/bind/annotation/adapters/XmlAdapter;-><init>()V

    return-void
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
    .line 19
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/adapters/HexBinaryAdapter;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, [B

    invoke-virtual {v2, v3}, Ljavax/xml/bind/annotation/adapters/HexBinaryAdapter;->marshal([B)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/annotation/adapters/HexBinaryAdapter;
    return-object v0
.end method

.method public marshal([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/adapters/HexBinaryAdapter;
    move-object v1, p1

    .local v1, "bytes":[B
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 27
    .end local v0    # "this":Ljavax/xml/bind/annotation/adapters/HexBinaryAdapter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavax/xml/bind/annotation/adapters/HexBinaryAdapter;
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverter;->printHexBinary([B)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic unmarshal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/adapters/HexBinaryAdapter;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavax/xml/bind/annotation/adapters/HexBinaryAdapter;->unmarshal(Ljava/lang/String;)[B

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/annotation/adapters/HexBinaryAdapter;
    return-object v0
.end method

.method public unmarshal(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/adapters/HexBinaryAdapter;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 22
    .end local v0    # "this":Ljavax/xml/bind/annotation/adapters/HexBinaryAdapter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavax/xml/bind/annotation/adapters/HexBinaryAdapter;
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Ljavax/xml/bind/DatatypeConverter;->parseHexBinary(Ljava/lang/String;)[B

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
