.class public Ljavax/xml/bind/DataBindingException;
.super Ljava/lang/RuntimeException;
.source "DataBindingException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DataBindingException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cause":Ljava/lang/Throwable;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/DataBindingException;
    move-object v1, p1

    .local v1, "cause":Ljava/lang/Throwable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    return-void
.end method
