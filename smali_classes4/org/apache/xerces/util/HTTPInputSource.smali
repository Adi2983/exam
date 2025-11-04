.class public final Lorg/apache/xerces/util/HTTPInputSource;
.super Lorg/apache/xerces/xni/parser/XMLInputSource;


# instance fields
.field protected fFollowRedirects:Z

.field protected fHTTPRequestProperties:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    move-object v6, v0

    new-instance v7, Ljava/util/HashMap;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v6, Lorg/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    move-object v6, v0

    new-instance v7, Ljava/util/HashMap;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v6, Lorg/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/XMLResourceIdentifier;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Lorg/apache/xerces/xni/XMLResourceIdentifier;)V

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getFollowHTTPRedirects()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    move v0, v1

    return v0
.end method

.method public getHTTPRequestProperties()Ljava/util/Iterator;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getHTTPRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public setFollowHTTPRedirects(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    return-void
.end method

.method public setHTTPRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method
