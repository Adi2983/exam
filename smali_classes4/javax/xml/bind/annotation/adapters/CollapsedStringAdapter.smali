.class public Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
.super Ljavax/xml/bind/annotation/adapters/XmlAdapter;
.source "CollapsedStringAdapter.java"


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

    .local v0, "this":Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
    move-object v1, v0

    invoke-direct {v1}, Ljavax/xml/bind/annotation/adapters/XmlAdapter;-><init>()V

    return-void
.end method

.method protected static isWhiteSpace(C)Z
    .locals 3

    .prologue
    .line 94
    move v0, p0

    .local v0, "ch":C
    move v1, v0

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 97
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

    if-eq v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x20

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

    .local v0, "this":Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;->marshal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
    return-object v0
.end method

.method public marshal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
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

    .local v0, "this":Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;->unmarshal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
    return-object v0
.end method

.method public unmarshal(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v9, v1

    if-nez v9, :cond_0

    const/4 v9, 0x0

    move-object v0, v9

    .line 77
    .end local v0    # "this":Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
    :goto_0
    return-object v0

    .line 29
    .restart local v0    # "this":Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v2, v9

    .line 34
    .local v2, "len":I
    const/4 v9, 0x0

    move v3, v9

    .line 35
    .local v3, "s":I
    :goto_1
    move v9, v3

    move v10, v2

    if-ge v9, v10, :cond_1

    .line 36
    move-object v9, v1

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;->isWhiteSpace(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 37
    .line 40
    :cond_1
    move v9, v3

    move v10, v2

    if-ne v9, v10, :cond_3

    .line 42
    move-object v9, v1

    move-object v0, v9

    goto :goto_0

    .line 38
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 39
    goto :goto_1

    .line 47
    :cond_3
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move v11, v2

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v4, v9

    .line 49
    .local v4, "result":Ljava/lang/StringBuffer;
    move v9, v3

    if-eqz v9, :cond_5

    .line 50
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    :goto_2
    move v9, v5

    move v10, v3

    if-ge v9, v10, :cond_4

    .line 51
    move-object v9, v4

    move-object v10, v1

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 50
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 52
    :cond_4
    move-object v9, v4

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 55
    .end local v5    # "i":I
    :cond_5
    const/4 v9, 0x1

    move v5, v9

    .line 56
    .local v5, "inStripMode":Z
    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v6, v9

    .local v6, "i":I
    :goto_3
    move v9, v6

    move v10, v2

    if-ge v9, v10, :cond_8

    .line 57
    move-object v9, v1

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v7, v9

    .line 58
    .local v7, "ch":C
    move v9, v7

    invoke-static {v9}, Ljavax/xml/bind/annotation/adapters/CollapsedStringAdapter;->isWhiteSpace(C)Z

    move-result v9

    move v8, v9

    .line 59
    .local v8, "b":Z
    move v9, v5

    if-eqz v9, :cond_6

    move v9, v8

    if-eqz v9, :cond_6

    .line 60
    .line 56
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 62
    :cond_6
    move v9, v8

    move v5, v9

    .line 63
    move v9, v5

    if-eqz v9, :cond_7

    .line 64
    move-object v9, v4

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_4

    .line 66
    :cond_7
    move-object v9, v4

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_4

    .line 70
    .end local v7    # "ch":C
    .end local v8    # "b":Z
    :cond_8
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    move v2, v9

    .line 71
    move v9, v2

    if-lez v9, :cond_9

    move-object v9, v4

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_9

    .line 72
    move-object v9, v4

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 77
    :cond_9
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    goto/16 :goto_0
.end method
