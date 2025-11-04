.class public interface abstract Ljavax/xml/bind/Marshaller;
.super Ljava/lang/Object;
.source "Marshaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/xml/bind/Marshaller$Listener;
    }
.end annotation


# static fields
.field public static final JAXB_ENCODING:Ljava/lang/String; = "jaxb.encoding"

.field public static final JAXB_FORMATTED_OUTPUT:Ljava/lang/String; = "jaxb.formatted.output"

.field public static final JAXB_FRAGMENT:Ljava/lang/String; = "jaxb.fragment"

.field public static final JAXB_NO_NAMESPACE_SCHEMA_LOCATION:Ljava/lang/String; = "jaxb.noNamespaceSchemaLocation"

.field public static final JAXB_SCHEMA_LOCATION:Ljava/lang/String; = "jaxb.schemaLocation"


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

.method public abstract getAttachmentMarshaller()Ljavax/xml/bind/attachment/AttachmentMarshaller;
.end method

.method public abstract getEventHandler()Ljavax/xml/bind/ValidationEventHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract getListener()Ljavax/xml/bind/Marshaller$Listener;
.end method

.method public abstract getNode(Ljava/lang/Object;)Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
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

.method public abstract marshal(Ljava/lang/Object;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract marshal(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract marshal(Ljava/lang/Object;Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract marshal(Ljava/lang/Object;Ljavax/xml/stream/XMLEventWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract marshal(Ljava/lang/Object;Ljavax/xml/stream/XMLStreamWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract marshal(Ljava/lang/Object;Lorg/w3c/dom/Node;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract marshal(Ljava/lang/Object;Lorg/xml/sax/ContentHandler;)V
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

.method public abstract setAttachmentMarshaller(Ljavax/xml/bind/attachment/AttachmentMarshaller;)V
.end method

.method public abstract setEventHandler(Ljavax/xml/bind/ValidationEventHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract setListener(Ljavax/xml/bind/Marshaller$Listener;)V
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
