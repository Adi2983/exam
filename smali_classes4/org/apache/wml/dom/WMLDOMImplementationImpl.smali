.class public Lorg/apache/wml/dom/WMLDOMImplementationImpl;
.super Lorg/apache/xerces/dom/DOMImplementationImpl;

# interfaces
.implements Lorg/apache/wml/WMLDOMImplementation;


# static fields
.field static final singleton:Lorg/apache/xerces/dom/DOMImplementationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/wml/dom/WMLDOMImplementationImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/wml/dom/WMLDOMImplementationImpl;-><init>()V

    sput-object v0, Lorg/apache/wml/dom/WMLDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/DOMImplementationImpl;

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

    sget-object v0, Lorg/apache/wml/dom/WMLDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/DOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method protected createDocument(Lorg/w3c/dom/DocumentType;)Lorg/apache/xerces/dom/CoreDocumentImpl;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/wml/dom/WMLDocumentImpl;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/wml/dom/WMLDocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;)V

    move-object v0, v2

    return-object v0
.end method
