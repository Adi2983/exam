.class public interface abstract annotation Ljavax/xml/bind/annotation/XmlType;
.super Ljava/lang/Object;
.source "XmlType.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ljavax/xml/bind/annotation/XmlType;
        factoryClass = Ljavax/xml/bind/annotation/XmlType$DEFAULT;
        factoryMethod = ""
        name = "##default"
        namespace = "##default"
        propOrder = {
            ""
        }
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/xml/bind/annotation/XmlType$DEFAULT;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract factoryClass()Ljava/lang/Class;
.end method

.method public abstract factoryMethod()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract namespace()Ljava/lang/String;
.end method

.method public abstract propOrder()[Ljava/lang/String;
.end method
