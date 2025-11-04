.class public Ljavax/xml/bind/helpers/PrintConversionEventImpl;
.super Ljavax/xml/bind/helpers/ValidationEventImpl;
.source "PrintConversionEventImpl.java"

# interfaces
.implements Ljavax/xml/bind/PrintConversionEvent;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljavax/xml/bind/ValidationEventLocator;)V
    .locals 8

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/PrintConversionEventImpl;
    move v1, p1

    .local v1, "_severity":I
    move-object v2, p2

    .local v2, "_message":Ljava/lang/String;
    move-object v3, p3

    .local v3, "_locator":Ljavax/xml/bind/ValidationEventLocator;
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Ljavax/xml/bind/ValidationEventLocator;)V

    .line 46
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljavax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V
    .locals 10

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/PrintConversionEventImpl;
    move v1, p1

    .local v1, "_severity":I
    move-object v2, p2

    .local v2, "_message":Ljava/lang/String;
    move-object v3, p3

    .local v3, "_locator":Ljavax/xml/bind/ValidationEventLocator;
    move-object v4, p4

    .local v4, "_linkedException":Ljava/lang/Throwable;
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Ljavax/xml/bind/helpers/ValidationEventImpl;-><init>(ILjava/lang/String;Ljavax/xml/bind/ValidationEventLocator;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method
