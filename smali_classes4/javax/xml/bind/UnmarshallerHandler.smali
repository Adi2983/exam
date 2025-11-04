.class public interface abstract Ljavax/xml/bind/UnmarshallerHandler;
.super Ljava/lang/Object;
.source "UnmarshallerHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# virtual methods
.method public abstract getResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
