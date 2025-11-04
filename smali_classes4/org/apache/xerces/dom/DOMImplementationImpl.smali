.class public Lorg/apache/xerces/dom/DOMImplementationImpl;
.super Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

# interfaces
.implements Lorg/w3c/dom/DOMImplementation;


# static fields
.field static final singleton:Lorg/apache/xerces/dom/DOMImplementationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/dom/DOMImplementationImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/dom/DOMImplementationImpl;-><init>()V

    sput-object v0, Lorg/apache/xerces/dom/DOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/DOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lorg/apache/xerces/dom/DOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/DOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method protected createDocument(Lorg/w3c/dom/DocumentType;)Lorg/apache/xerces/dom/CoreDocumentImpl;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/dom/DocumentImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/DocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;)V

    move-object v0, v2

    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    move v3, v5

    move v5, v3

    if-nez v5, :cond_9

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    :cond_0
    const/4 v5, 0x1

    :goto_0
    move v4, v5

    move-object v5, v1

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    :cond_1
    move-object v5, v1

    const-string/jumbo v6, "Events"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    if-nez v5, :cond_6

    move-object v5, v2

    const-string/jumbo v6, "2.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_2
    move-object v5, v1

    const-string/jumbo v6, "MutationEvents"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v4

    if-nez v5, :cond_6

    move-object v5, v2

    const-string/jumbo v6, "2.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_3
    move-object v5, v1

    const-string/jumbo v6, "Traversal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v4

    if-nez v5, :cond_6

    move-object v5, v2

    const-string/jumbo v6, "2.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_4
    move-object v5, v1

    const-string/jumbo v6, "Range"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v4

    if-nez v5, :cond_6

    move-object v5, v2

    const-string/jumbo v6, "2.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    move-object v5, v1

    const-string/jumbo v6, "MutationEvents"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v4

    if-nez v5, :cond_6

    move-object v5, v2

    const-string/jumbo v6, "2.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_6
    const/4 v5, 0x1

    :goto_1
    move v0, v5

    :goto_2
    return v0

    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x0

    goto :goto_1

    :cond_9
    move v5, v3

    move v0, v5

    goto :goto_2
.end method
