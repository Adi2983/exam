.class public interface abstract Ljavax/xml/bind/ValidationEvent;
.super Ljava/lang/Object;
.source "ValidationEvent.java"


# static fields
.field public static final ERROR:I = 0x1

.field public static final FATAL_ERROR:I = 0x2

.field public static final WARNING:I


# virtual methods
.method public abstract getLinkedException()Ljava/lang/Throwable;
.end method

.method public abstract getLocator()Ljavax/xml/bind/ValidationEventLocator;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getSeverity()I
.end method
