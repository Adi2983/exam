.class final Ljavax/xml/bind/GetPropertyAction;
.super Ljava/lang/Object;
.source "GetPropertyAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/GetPropertyAction;
    move-object v1, p1

    .local v1, "propertyName":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/GetPropertyAction;->propertyName:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/GetPropertyAction;
    move-object v1, v0

    invoke-virtual {v1}, Ljavax/xml/bind/GetPropertyAction;->run()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/GetPropertyAction;
    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/GetPropertyAction;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/GetPropertyAction;->propertyName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/GetPropertyAction;
    return-object v0
.end method
