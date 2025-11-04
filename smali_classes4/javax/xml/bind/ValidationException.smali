.class public Ljavax/xml/bind/ValidationException;
.super Ljavax/xml/bind/JAXBException;
.source "ValidationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/ValidationException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljavax/xml/bind/ValidationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/ValidationException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "errorCode":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavax/xml/bind/ValidationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/ValidationException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "errorCode":Ljava/lang/String;
    move-object v3, p3

    .local v3, "exception":Ljava/lang/Throwable;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/ValidationException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "exception":Ljava/lang/Throwable;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Ljavax/xml/bind/ValidationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/ValidationException;
    move-object v1, p1

    .local v1, "exception":Ljava/lang/Throwable;
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-direct {v2, v3, v4, v5}, Ljavax/xml/bind/ValidationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method
