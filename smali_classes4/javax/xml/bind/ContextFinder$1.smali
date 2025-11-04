.class Ljavax/xml/bind/ContextFinder$1;
.super Ljava/lang/Object;
.source "ContextFinder.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/xml/bind/ContextFinder;->find([Ljava/lang/Class;Ljava/util/Map;)Ljavax/xml/bind/JAXBContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$c:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 4

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/ContextFinder$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/ContextFinder$1;->val$c:Ljava/lang/Class;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/ContextFinder$1;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/ContextFinder$1;->val$c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/ContextFinder$1;
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/ContextFinder$1;
    move-object v1, v0

    invoke-virtual {v1}, Ljavax/xml/bind/ContextFinder$1;->run()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/ContextFinder$1;
    return-object v0
.end method
