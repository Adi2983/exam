.class public abstract Ljavax/xml/bind/SchemaOutputResolver;
.super Ljava/lang/Object;
.source "SchemaOutputResolver.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/SchemaOutputResolver;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createOutput(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
