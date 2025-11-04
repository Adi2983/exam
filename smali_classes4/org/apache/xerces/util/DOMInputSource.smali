.class public final Lorg/apache/xerces/util/DOMInputSource;
.super Lorg/apache/xerces/xni/parser/XMLInputSource;


# instance fields
.field private fNode:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/DOMInputSource;-><init>(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-static {v4}, Lorg/apache/xerces/util/DOMInputSource;->getSystemIdFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/DOMInputSource;->fNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/util/DOMInputSource;->fNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method private static getSystemIdFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v0

    :try_start_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getBaseURI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    move-object v1, v3

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v2, v3

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public getNode()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/DOMInputSource;->fNode:Lorg/w3c/dom/Node;

    move-object v0, v1

    return-object v0
.end method

.method public setNode(Lorg/w3c/dom/Node;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/DOMInputSource;->fNode:Lorg/w3c/dom/Node;

    return-void
.end method
