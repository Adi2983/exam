.class public interface abstract Ljavax/xml/bind/Unmarshaller;
.super Ljava/lang/Object;
.source "Unmarshaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/xml/bind/Unmarshaller$Listener;
    }
.end annotation


# virtual methods
.method public abstract getAdapter(Ljava/lang/Class;)Ljavax/xml/bind/annotation/adapters/XmlAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljavax/xml/bind/annotation/adapters/XmlAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method public abstract getAttachmentUnmarshaller()Ljavax/xml/bind/attachment/AttachmentUnmarshaller;
.end method

.method public abstract getEventHandler()Ljavax/xml/bind/ValidationEventHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract getListener()Ljavax/xml/bind/Unmarshaller$Listener;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/PropertyException;
        }
    .end annotation
.end method

.method public abstract getSchema()Ljavax/xml/validation/Schema;
.end method

.method public abstract getUnmarshallerHandler()Ljavax/xml/bind/UnmarshallerHandler;
.end method

.method public abstract isValidating()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract setAdapter(Ljava/lang/Class;Ljavax/xml/bind/annotation/adapters/XmlAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljavax/xml/bind/annotation/adapters/XmlAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;TA;)V"
        }
    .end annotation
.end method

.method public abstract setAdapter(Ljavax/xml/bind/annotation/adapters/XmlAdapter;)V
.end method

.method public abstract setAttachmentUnmarshaller(Ljavax/xml/bind/attachment/AttachmentUnmarshaller;)V
.end method

.method public abstract setEventHandler(Ljavax/xml/bind/ValidationEventHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract setListener(Ljavax/xml/bind/Unmarshaller$Listener;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/PropertyException;
        }
    .end annotation
.end method

.method public abstract setSchema(Ljavax/xml/validation/Schema;)V
.end method

.method public abstract setValidating(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Ljava/io/File;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Ljava/io/Reader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Ljava/net/URL;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Ljavax/xml/stream/XMLEventReader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Ljavax/xml/stream/XMLStreamReader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Ljavax/xml/transform/Source;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Lorg/w3c/dom/Node;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Lorg/xml/sax/InputSource;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Ljavax/xml/stream/XMLEventReader;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/xml/stream/XMLEventReader;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/xml/bind/JAXBElement",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Ljavax/xml/stream/XMLStreamReader;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/xml/stream/XMLStreamReader;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/xml/bind/JAXBElement",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/xml/transform/Source;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/xml/bind/JAXBElement",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Lorg/w3c/dom/Node;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/xml/bind/JAXBElement",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method
