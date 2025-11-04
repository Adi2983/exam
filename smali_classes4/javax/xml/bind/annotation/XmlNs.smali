.class public interface abstract annotation Ljavax/xml/bind/annotation/XmlNs;
.super Ljava/lang/Object;
.source "XmlNs.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {}
.end annotation


# virtual methods
.method public abstract namespaceURI()Ljava/lang/String;
.end method

.method public abstract prefix()Ljava/lang/String;
.end method
