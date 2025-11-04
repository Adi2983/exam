.class public Lorg/apache/xerces/dom/PSVIDOMImplementationImpl;
.super Lorg/apache/xerces/dom/DOMImplementationImpl;


# static fields
.field static final singleton:Lorg/apache/xerces/dom/PSVIDOMImplementationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/dom/PSVIDOMImplementationImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/dom/PSVIDOMImplementationImpl;-><init>()V

    sput-object v0, Lorg/apache/xerces/dom/PSVIDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/PSVIDOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/DOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lorg/apache/xerces/dom/PSVIDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/PSVIDOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method protected createDocument(Lorg/w3c/dom/DocumentType;)Lorg/apache/xerces/dom/CoreDocumentImpl;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/dom/PSVIDocumentImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/PSVIDocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;)V

    move-object v0, v2

    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/dom/DOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    const-string/jumbo v4, "psvi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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
