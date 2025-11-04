.class public Ljavax/xml/bind/JAXBElement;
.super Ljava/lang/Object;
.source "JAXBElement.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/xml/bind/JAXBElement$GlobalScope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final declaredType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final name:Ljavax/xml/namespace/QName;

.field protected nil:Z

.field protected final scope:Ljava/lang/Class;

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v1, p1

    .local v1, "name":Ljavax/xml/namespace/QName;
    move-object v2, p2

    .local v2, "declaredType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v3, p3

    .local v3, "scope":Ljava/lang/Class;
    move-object v4, p4

    .local v4, "value":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavax/xml/bind/JAXBElement;->nil:Z

    .line 90
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v1

    if-nez v5, :cond_1

    .line 91
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 92
    :cond_1
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavax/xml/bind/JAXBElement;->declaredType:Ljava/lang/Class;

    .line 93
    move-object v5, v3

    if-nez v5, :cond_2

    const-class v5, Ljavax/xml/bind/JAXBElement$GlobalScope;

    move-object v3, v5

    .line 94
    :cond_2
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljavax/xml/bind/JAXBElement;->scope:Ljava/lang/Class;

    .line 95
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavax/xml/bind/JAXBElement;->name:Ljavax/xml/namespace/QName;

    .line 96
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavax/xml/bind/JAXBElement;->setValue(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v1, p1

    .local v1, "name":Ljavax/xml/namespace/QName;
    move-object v2, p2

    .local v2, "declaredType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const-class v7, Ljavax/xml/bind/JAXBElement$GlobalScope;

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Ljavax/xml/bind/JAXBElement;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 106
    return-void
.end method


# virtual methods
.method public getDeclaredType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/JAXBElement;->declaredType:Ljava/lang/Class;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/JAXBElement;->name:Ljavax/xml/namespace/QName;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    return-object v0
.end method

.method public getScope()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/JAXBElement;->scope:Ljava/lang/Class;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/JAXBElement;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    return-object v0
.end method

.method public isGlobalScope()Z
    .locals 3

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/JAXBElement;->scope:Ljava/lang/Class;

    const-class v2, Ljavax/xml/bind/JAXBElement$GlobalScope;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    return v0

    .restart local v0    # "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNil()Z
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/JAXBElement;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Ljavax/xml/bind/JAXBElement;->nil:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    return v0

    .restart local v0    # "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTypeSubstituted()Z
    .locals 3

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/JAXBElement;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 194
    .end local v0    # "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/JAXBElement;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/bind/JAXBElement;->declaredType:Ljava/lang/Class;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setNil(Z)V
    .locals 4

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavax/xml/bind/JAXBElement;->nil:Z

    .line 174
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBElement;, "Ljavax/xml/bind/JAXBElement<TT;>;"
    move-object v1, p1

    .local v1, "t":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/JAXBElement;->value:Ljava/lang/Object;

    .line 132
    return-void
.end method
