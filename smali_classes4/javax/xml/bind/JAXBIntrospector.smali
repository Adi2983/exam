.class public abstract Ljavax/xml/bind/JAXBIntrospector;
.super Ljava/lang/Object;
.source "JAXBIntrospector.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBIntrospector;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "jaxbElement":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Ljavax/xml/bind/JAXBElement;

    if-eqz v1, :cond_0

    .line 65
    move-object v1, v0

    check-cast v1, Ljavax/xml/bind/JAXBElement;

    invoke-virtual {v1}, Ljavax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 69
    .end local v0    # "jaxbElement":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "jaxbElement":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abstract getElementName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;
.end method

.method public abstract isElement(Ljava/lang/Object;)Z
.end method
