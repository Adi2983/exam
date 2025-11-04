.class public interface abstract Ljavax/xml/bind/annotation/DomHandler;
.super Ljava/lang/Object;
.source "DomHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ElementT:",
        "Ljava/lang/Object;",
        "ResultT::",
        "Ljavax/xml/transform/Result;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createUnmarshaller(Ljavax/xml/bind/ValidationEventHandler;)Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/bind/ValidationEventHandler;",
            ")TResultT;"
        }
    .end annotation
.end method

.method public abstract getElement(Ljavax/xml/transform/Result;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)TElementT;"
        }
    .end annotation
.end method

.method public abstract marshal(Ljava/lang/Object;Ljavax/xml/bind/ValidationEventHandler;)Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElementT;",
            "Ljavax/xml/bind/ValidationEventHandler;",
            ")",
            "Ljavax/xml/transform/Source;"
        }
    .end annotation
.end method
