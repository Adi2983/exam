.class public Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;
.super Lorg/apache/xerces/dom/DOMImplementationImpl;


# static fields
.field static final singleton:Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;-><init>()V

    sput-object v0, Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;

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

    sget-object v0, Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;

    return-object v0
.end method
